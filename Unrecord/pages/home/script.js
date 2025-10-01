// script.js

// Envolver todo en un IIFE para evitar contaminar el scope global
(function() {
    "use strict"; // Habilitar modo estricto

    // --- Variables Globales del Módulo ---
    let searchTimeout = null;

    // --- Funciones Utilitarias ---
    function getCookie(name) {
        const cookies = document.cookie.split('; ');
        for (let i = 0; i < cookies.length; i++) {
            const [cookieName, cookieValue] = cookies[i].split('=');
            if (cookieName === name) {
                // Decodificar el valor de la cookie
                return decodeURIComponent(cookieValue);
            }
        }
        return null;
    }

    function setCookie(name, value, days = 7) {
        let expires = "";
        if (days) {
            const date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        // Asegurar que el valor se codifica correctamente
        document.cookie = name + "=" + (encodeURIComponent(value) || "") + expires + "; path=/; SameSite=Lax"; // SameSite=Lax es buena práctica
    }

    // --- Lógica de Temas (Dark/Light) ---
    function applyTheme(theme) {
        const body = document.body;
        const logo = document.getElementById("isotipo");
        const buscarIcon = document.getElementById("buscar");
        const welcomeImg = document.getElementById("default");
        // const loadingIcon = document.getElementById("loading"); // Quitado del HTML original, lo dejamos comentado

        body.classList.remove("dark", "light");
        body.classList.add(theme);

        // Cambiar imágenes según el tema (asegúrate que los IDs existen)
        if (logo) {
            logo.src = theme === "dark" ? "../../assets/isotipo_dark.png" : "../../assets/isotipo.png";
        }
        if (buscarIcon) {
            buscarIcon.src = theme === "dark" ? "../../assets/dark/search.png" : "../../assets/buscar.png";
        }
        if (welcomeImg) {
            welcomeImg.src = theme === "dark" ? "../../assets/dark/welcome.png" : "../../assets/welcome.png";
        }
        /* if (loadingIcon) {
             loadingIcon.src = theme === "dark" ? "../assets/icono_dark.png" : "../assets/icono.png";
        } */

        console.log('Tema aplicado:', theme);
        setCookie("theme", theme); // Guardar preferencia en cookie
    }

    function initializeTheme() {
        const savedTheme = getCookie("theme") || "light"; // 'light' por defecto
        applyTheme(savedTheme);
        // Aquí podrías añadir un botón para cambiar de tema y llamaría a applyTheme con el tema opuesto
    }

    // --- Lógica de Pantalla de Carga ---
    function hideLoadingScreen() {
        const loadingScreen = document.getElementById("loading-screen");
        if (loadingScreen) {
            loadingScreen.style.opacity = "0";
            // Esperar que termine la transición de opacidad antes de ocultar con display
            setTimeout(() => {
                loadingScreen.style.display = "none";
            }, 500); // Debe coincidir con la duración de la transición CSS
        }
        // Hacer visible el contenido principal
        document.body.style.visibility = "visible";
    }

    // --- Lógica de Búsqueda ---
    function setupSearch() {
        const searchButton = document.getElementById("buscar");
        const searchForm = document.getElementById("form_search");
        const searchInput = document.getElementById("search");
        const isotipo = document.getElementById("isotipo");
        const dropdown = document.getElementById("dropdown");

        if (!searchButton || !searchForm || !searchInput || !isotipo || !dropdown) {
            console.warn("Elementos de búsqueda no encontrados.");
            return;
        }

        // 1. Mostrar/Ocultar barra de búsqueda
        searchButton.addEventListener("click", () => {
            searchForm.style.display = searchForm.style.display === 'none' ? 'block' : 'none';
            isotipo.style.display = searchForm.style.display === 'none' ? 'block' : 'none';
            if (searchForm.style.display === 'block') {
                searchInput.focus(); // Poner foco en el input al mostrar
                dropdown.style.display = 'none'; // Ocultar dropdown al abrir
            } else {
                 // Ocultar dropdown y limpiar input al cerrar
                 searchInput.value = '';
                 dropdown.innerHTML = '';
                 dropdown.style.display = 'none';
                 clearHighlights(); // Limpiar resaltados si los hubiera
            }
        });


        // 2. Crear el dropdown si no existe (ya está en el HTML, no es necesario crearlo)
        /* if (!dropdown) {
             dropdown = document.createElement("ul");
             dropdown.id = "dropdown";
             // Necesitaría ser añadido en la posición correcta, no solo al body
             searchForm.appendChild(dropdown); // Añadirlo dentro del form para posicionamiento relativo
        } */

        // 3. Listener para input de búsqueda (con debounce)
        searchInput.addEventListener("keyup", () => {
            clearTimeout(searchTimeout);
            searchTimeout = setTimeout(performSearch, 300); // Esperar 300ms después de dejar de teclear
        });

        // 4. Función que realiza la búsqueda
        function performSearch() {
            let searchText = searchInput.value.trim().toLowerCase();
            // IMPORTANTE: Definir QUÉ se quiere buscar. ¿Solo títulos de posts?
            // Buscar en los botones de series y películas parece lo más lógico
            let elementsToSearch = document.querySelectorAll('#pelis .post_container, #pelis .post_container_serie');
            let resultados = [];

            clearHighlights(); // Limpiar resaltados previos

            if (searchText === "") {
                updateDropdown([]); // Vaciar dropdown si no hay texto
                return;
            }

            elementsToSearch.forEach(el => {
                // Asumimos que el título/nombre está en un atributo 'name' o 'data-name' o un hijo
                // Adaptar esto a cómo guardas el nombre real del item
                let nameAttr = el.getAttribute("data-name")?.toLowerCase() || el.getAttribute("name")?.toLowerCase() || ""; // Añadir data-name si es posible
                let onClickAttr = el.getAttribute("onclick") || el.hasAttribute('value'); // Verificar si es clickeable (tiene onclick o es un botón de form)

                if (nameAttr && nameAttr.includes(searchText) && onClickAttr) {
                    // el.classList.add("highlight"); // Resaltar en la propia lista (opcional)
                    // Guardar el elemento y su nombre para el dropdown
                    resultados.push({ element: el, name: el.getAttribute("data-name") || el.getAttribute("name") });
                } else {
                    // el.classList.remove("highlight");
                }
            });

            updateDropdown(resultados);
        }

        // 5. Actualizar el contenido del dropdown
        function updateDropdown(resultados) {
            dropdown.innerHTML = ""; // Limpiar opciones anteriores

            if (resultados.length === 0 || searchInput.value.trim() === "") {
                dropdown.style.display = "none";
                return;
            }

            resultados.forEach(res => {
                let li = document.createElement("li");
                li.textContent = res.name; // Mostrar el nombre encontrado
                li.setAttribute('role', 'option'); // Accesibilidad

                // Al hacer clic en un item del dropdown, simula un click en el elemento original
                li.addEventListener("click", () => {
                    if (res.element.tagName === 'BUTTON') {
                        // Si es un botón dentro de un form (como el de series)
                        res.element.click(); // Simular click (disparará el submit del form AJAX)
                    } else if (res.element.getAttribute('onclick')) {
                        // Si tiene un handler onclick directo (como las películas)
                         // Ejecutar el código del onclick directamente puede ser inseguro si viene de la BD
                         // Es mejor tener una función centralizada y pasarle un ID
                         // Por ahora, simulamos el click que debería llamar a la función definida en onclick
                        res.element.click();
                    }
                    // Ocultar dropdown y limpiar después de seleccionar
                    searchInput.value = '';
                    dropdown.innerHTML = '';
                    dropdown.style.display = "none";
                    searchForm.style.display = 'none'; // Ocultar barra de búsqueda también
                    isotipo.style.display = 'block'; // Mostrar isotipo
                    clearHighlights();
                });
                dropdown.appendChild(li);
            });

            dropdown.style.display = "block"; // Mostrar el desplegable
        }

         // 6. Ocultar el desplegable si el usuario hace clic fuera
        document.addEventListener("click", (event) => {
            // Si el clic NO fue dentro del input ni dentro del dropdown
            if (!searchInput.contains(event.target) && !dropdown.contains(event.target) && !searchButton.contains(event.target)) {
                 dropdown.style.display = "none";
                 // Opcional: ¿Ocultar también la barra de búsqueda si está vacía?
                 // if (searchInput.value.trim() === '') {
                 //    searchForm.style.display = 'none';
                 //    isotipo.style.display = 'block';
                 // }
            }
        });

         // 7. Limpiar resaltados (si se usara .highlight)
         function clearHighlights() {
             document.querySelectorAll('.highlight').forEach(el => el.classList.remove('highlight'));
         }
    }
    
    // --- Lógica para Abrir Películas (Video Player) ---
    // La función original está bien, pero la exponemos globalmente si es llamada desde HTML
    window.abrir_peli = function(urlPeli) {
        if (urlPeli) {
            console.log("Abriendo película:", urlPeli);
            localStorage.setItem('movie', urlPeli);
            // Asumiendo que video.php está en el mismo nivel o ruta relativa conocida
           window.location.href = '../video.php'; // Ajusta la ruta si es necesario
        } else {
            console.error("URL de película inválida.");
        }
    }

    // --- Lógica para Guardar Género (Tipo) ---
    // También la exponemos globalmente
    window.guard_gen = function(tipo) {
        if (tipo) {
            console.log("Guardando tipo:", tipo);
            localStorage.setItem('tipo', tipo);
        } else {
            console.error("Tipo inválido para guardar.");
        }
    }

    // --- Lógica para Mostrar/Ocultar Portada Bienvenida ---
    function setupWelcomeToggle() {
        const welcoming = document.getElementById('contenedor_bienvenida');
        const back_pic = document.getElementById('back_pic');
        const iso_port = document.getElementById('iso_port');

        if (!welcoming || !back_pic || !iso_port) return; // Salir si no existen

        // Funciones originales expuestas globalmente (si se llaman desde HTML)
        window.welc_port = function(portUrl, isoUrl) {
            if (portUrl) back_pic.src = portUrl;
            if (isoUrl) iso_port.src = isoUrl;
            back_pic.style.display = 'block'; // Usar display en lugar de clases ocultar/mostrar
            iso_port.style.display = 'block';
            welcoming.style.display = 'none';
            console.log("Mostrando portada:", portUrl);
        }

        window.welc_back_up = function() {
            welcoming.style.display = 'flex'; // Volver a flex
            back_pic.style.display = 'none';
            iso_port.style.display = 'none';
            console.log("Volviendo a bienvenida.");
        }
    }

    // --- Lógica para Cargar Series vía AJAX ---
    function setupSeriesAjax() {
        const seriesForm = document.getElementById("seriesForm");
        const contenidoDiv = document.getElementById("contenido"); // Div que actúa como modal/overlay

        if (!seriesForm || !contenidoDiv) {
            console.warn("Formulario de series o div de contenido no encontrado.");
            return;
        }

        seriesForm.addEventListener("submit", function (event) {
            event.preventDefault(); // Evitar recarga de página
            // event.stopPropagation(); // No suele ser necesario aquí

            // Asegurarse de que el evento fue disparado por un botón dentro del form
            const submitButton = event.submitter;
            if (!submitButton || submitButton.tagName !== 'BUTTON' || !submitButton.hasAttribute('value')) {
                 console.warn("Submit no detectado o no es un botón válido.");
                 return;
            }

            const serieId = submitButton.value;
            console.log("Solicitando serie ID:", serieId);
            localStorage.setItem('serieid', serieId);


            // Mostrar un indicador de carga si se desea
            // contenidoDiv.innerHTML = '<p>Cargando...</p>';
            // contenidoDiv.style.display = 'flex'; // Mostrar overlay

            const formData = new FormData();
            formData.append("serie_id", serieId); // Asegurarse que el name coincide con PHP

            fetch(window.location.href, { // Enviar al mismo script PHP
                method: "POST",
                body: formData,
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.text(); // Obtener el HTML como texto
            })
            .then(html => {
                // Insertar el HTML recibido DENTRO del div de contenido/modal
                // El HTML recibido DEBE ser solo el <div class="content">...</div>
                contenidoDiv.innerHTML = html;
                contenidoDiv.style.display = "flex"; // Mostrar el overlay/modal con el contenido
                addDynamicEventListeners(contenidoDiv); // Añadir listeners a los nuevos elementos
            })
            .catch(error => {
                console.error("Error en AJAX para cargar serie:", error);
                contenidoDiv.innerHTML = '<p>Error al cargar la serie. Inténtalo de nuevo.</p>'; // Mensaje de error
                 // Ocultar tras un tiempo
                 setTimeout(() => {
                     if (contenidoDiv.textContent.includes('Error')) {
                         contenidoDiv.style.display = 'none';
                     }
                 }, 3000);
            });
        });

        // Añadir listener al contenedor del modal para cerrarlo si se hace clic fuera del .content
        contenidoDiv.addEventListener('click', function(event) {
            // Si el clic fue directamente sobre el overlay (contenidoDiv) y no sobre sus hijos (el .content)
            if (event.target === contenidoDiv) {
                contenidoDiv.style.display = 'none';
                contenidoDiv.innerHTML = ''; // Limpiar contenido al cerrar
            }
        });
    }

    // --- Añadir Listeners a Contenido Cargado Dinámicamente (Series) ---
    function addDynamicEventListeners(container) {
        // 1. Botón Cerrar (X)
        const closeButton = container.querySelector("#salir_serie");
        if (closeButton) {
            closeButton.addEventListener("click", () => {
                const contenidoDiv = document.getElementById("contenido");
                if (contenidoDiv) {
                    contenidoDiv.style.display = "none";
                    contenidoDiv.innerHTML = ''; // Limpiar contenido
                }
            });
        }

        // 2. Botón "About" (?) para mostrar/ocultar InfoBox
        const aboutButton = container.querySelector(".about_img");
        const infoBox = container.querySelector(".infoBox");
        if (aboutButton && infoBox) {
            aboutButton.addEventListener("click", (event) => {
                 event.stopPropagation(); // Evitar que cierre el modal si infoBox está dentro
                infoBox.classList.toggle('mostrar'); // Alternar clase
            });
            // Opcional: Cerrar infoBox si se hace clic fuera de él (pero dentro del modal)
            container.querySelector('.content')?.addEventListener('click', (e) => {
                if (!infoBox.contains(e.target) && !aboutButton.contains(e.target) && infoBox.classList.contains('mostrar')) {
                     infoBox.classList.remove('mostrar');
                }
            });
        } else {
            if (!aboutButton) console.warn("Botón 'About' no encontrado en contenido dinámico.");
            if (!infoBox) console.warn("Elemento '.infoBox' no encontrado en contenido dinámico.");
        }


        // 3. Botón "Ver Ahora" (si necesita lógica JS específica)
        const watchButton = container.querySelector("#ser_ver");
        if (watchButton) {
            watchButton.addEventListener("click", () => {
                // Llama a la función global (si aún es necesaria)
                if (window.guard_gen) {
                    window.guard_gen('serie'); // O el tipo correcto
                }
                // Quizás aquí debería abrir el primer episodio? O hacer otra acción?
                console.log("Botón 'Ver Ahora' clickeado.");
                // Ejemplo: abrir primer episodio si existe
                const firstEpisode = container.querySelector(".epis li");
                if(firstEpisode && typeof window.abrir_peli === 'function') {
                    // Asumiendo que la URL está en un atributo data-url o similar
                    const episodeUrl = firstEpisode.getAttribute('data-url'); // Necesitarías añadir data-url="..." al <li> en PHP
                    if (episodeUrl) {
                        // window.abrir_peli(episodeUrl);
                        console.log("Intentaría abrir el primer episodio:", episodeUrl);
                        window.location.href = '../video.php';
                        window.abrir_peli(episodeUrl);
                    } else {
                         // Si no hay data-url, intentar obtenerla del onclick
                         const onclickCode = firstEpisode.getAttribute('onclick');
                         if (onclickCode && onclickCode.includes('abrir_peli')) {
                            try {
                                // Extraer la URL del string onclick (¡puede ser frágil!)
                                const urlMatch = onclickCode.match(/abrir_peli\(['"]([^'"]+)['"]\)/);
                                if (urlMatch && urlMatch[1]) {
                                   // window.abrir_peli(urlMatch[1]);
                                   console.log("Intentaría abrir el primer episodio (extraído de onclick):", urlMatch[1]);
                                }
                            } catch (e) { console.error("Error extrayendo URL del onclick", e); }
                         }
                    }
                }
            });
        }

// 4. Clic en Episodios (CORREGIDO)
        const episodeItems = container.querySelectorAll(".epis li");
        episodeItems.forEach(item => {
            // Obtenemos la URL del atributo data-url ANTES de añadir el listener
            const episodeUrl = item.getAttribute('data-url');
            const epname = item.getAttribute('name');

            item.addEventListener("click", () => {
                console.log("Clic en episodio. URL encontrada (data-url):", episodeUrl); // Log para verificar

                // Llamar a guard_gen si existe
                if (window.guard_gen) {
                    window.guard_gen('serie'); // o 'capitulo' si es más apropiado
                }
                        console.log("Nombre cap:", epname);
                        localStorage.setItem('epname', epname);

                // Verificar si obtuvimos una URL válida desde data-url
                if (episodeUrl) {
                    // Verificar si la función global abrir_peli existe
                    if (window.abrir_peli) {
                        window.abrir_peli(episodeUrl); // Llamar a la función global con la URL
                    } else {
                        console.error("La función global 'abrir_peli' no está definida.");
                    }
                } else {
                    // Esto no debería pasar si el PHP está generando bien el data-url
                    console.error("No se encontró el atributo 'data-url' en el elemento del episodio.");
                }
            });

            // Opcional: si aún pudieran existir elementos viejos con 'onclick',
            // podrías removerlo aquí para evitar conflictos, aunque el PHP actual no lo añade.
            if (item.hasAttribute('onclick')) {
                item.removeAttribute('onclick');
                console.warn("Se removió un atributo 'onclick' obsoleto de un episodio.");
            }
        });


        // 5. Botón "Temporadas" (si necesita funcionalidad)
        const seasonsButton = container.querySelector("#temp");
        const listaTemp = document.getElementById("ultemp");

        const episodeList = container.querySelector('.epis');
        listaTemp.addEventListener("click", () => {
        if (episodeList) {
            episodeList.scrollIntoView({ behavior: 'smooth' });
        }
        });
        
        if (seasonsButton) {
            seasonsButton.addEventListener("click", () => {

            if(listaTemp.style.display === 'none'){
                listaTemp.style.display = 'flex';
            } else {
                listaTemp.style.display = 'none';
            }

                console.log("Botón 'Temporadas' clickeado.");
                // Ejemplo: Scroll hacia la lista de episodios

            });
        }

    }


    // --- Lógica Usuarios Activos (Polling) ---
    // Esta función ya no parece tener un lugar donde mostrar la lista en el HTML proporcionado
    // Si se necesita, se debe añadir un <ul id="usuarios-activos"></ul> en el HTML.
    function updateActiveUsers() {
        fetch("?ajax=1") // Asume que la URL base maneja esto
            .then(response => {
                if (!response.ok) throw new Error("Error en red al buscar usuarios activos");
                return response.json();
            })
            .then(data => {
                // const usuariosLista = document.getElementById("usuarios-activos"); // Descomentar si existe el UL
                // if (!usuariosLista) return; // Salir si no hay donde mostrar

                // usuariosLista.innerHTML = ""; // Limpiar lista
                console.log("Usuarios activos recibidos:", data); // Log en consola por ahora
                /* data.forEach(usuario => { // Descomentar si existe el UL
                    let li = document.createElement("li");
                    li.textContent = "Usuario ID: " + usuario.usuario_id; // Mostrar ID (¿o nombre?)
                    usuariosLista.appendChild(li);
                }); */
            })
            .catch(error => console.error("Error al actualizar usuarios activos:", error));
    }


    // --- Inicialización General al Cargar el DOM ---
    document.addEventListener("DOMContentLoaded", function() {
        console.log("DOM Cargado. Inicializando scripts...");

        initializeTheme(); // Aplicar tema guardado o por defecto
        setupSearch();     // Configurar la barra de búsqueda
        setupWelcomeToggle(); // Configurar mostrar/ocultar bienvenida
        setupSeriesAjax(); // Configurar carga AJAX de series

        // Ocultar pantalla de carga después de un pequeño delay (o cuando todo esté listo)
        // El delay de 3s original puede ser mucho, ajusta según necesidad
        setTimeout(hideLoadingScreen, 500); // Ocultar después de 0.5s

        // Iniciar polling para usuarios activos (si es necesario)
        // updateActiveUsers(); // Llamada inicial
        // setInterval(updateActiveUsers, 60000); // Actualizar cada 60 segundos

        // Log de datos iniciales (si es necesario)
        const pelic = localStorage.getItem('pelicula'); // ¿Se usa 'pelicula' o 'movie'? Ser consistente
        console.log("LocalStorage 'pelicula':", pelic);

        // Verificar usuario (si se pasa desde PHP)
        if (typeof window.currentUser !== 'undefined') {
             console.log("Usuario actual (desde PHP):", window.currentUser);
        }

        console.log("Inicialización completada.");
    });

})(); // Fin del IIFE


const botonTemp = document.getElementById("temp");
const listaTemp = document.getElementById("ultemp");

botonTemp.addEventListener('click', function(){
    if(listaTemp.style.display === 'none'){
        listaTemp.style.display = 'block';
    } else {
        listaTemp.style.display = 'none';
    }
});


          // Mostrar la notificación después de 1 segundo
          setTimeout(() => {
            document.getElementById("toast").classList.add("show");

            // Ocultar después de 5 segundos
            setTimeout(() => {
              document.getElementById("toast").classList.remove("show");
            }, 5000);
          }, 1000);

          if (!localStorage.getItem('toastShown')) {
            setTimeout(() => {
                document.getElementById("toast").classList.add("show");
                localStorage.setItem('toastShown', 'true');
                setTimeout(() => {
                document.getElementById("toast").classList.remove("show");
                }, 5000);
            }, 1000);
            }


