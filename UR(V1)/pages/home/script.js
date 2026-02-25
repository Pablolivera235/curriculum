// script.js - Lógica completa para la versión local

(function () {
    "use strict";

    // --- 1. Inicialización y Tema ---
    function applyTheme(theme) {
        document.body.classList.remove("dark", "light");
        document.body.classList.add(theme);
        localStorage.setItem("theme", theme);
    }

    // --- 2. Pantalla de Carga y Toast ---
    function initUI() {
        const loadingScreen = document.getElementById("loading-screen");
        if (loadingScreen) {
            setTimeout(() => {
                loadingScreen.style.opacity = "0";
                setTimeout(() => loadingScreen.style.display = "none", 500);
            }, 500);
        }

        const toast = document.getElementById("toast");
        if (toast && !localStorage.getItem('toastShown')) {
            setTimeout(() => {
                toast.classList.add("show");
                localStorage.setItem('toastShown', 'true');
                setTimeout(() => toast.classList.remove("show"), 6000);
            }, 2000);
        }
    }

    // --- 3. Búsqueda ---
    function setupSearch() {
        const btnBuscar = document.getElementById("buscar");
        const formSearch = document.getElementById("form_search");
        const inputSearch = document.getElementById("search");
        const isotipo = document.getElementById("isotipo");
        const dropdown = document.getElementById("dropdown");

        if (!btnBuscar) return;

        btnBuscar.onclick = () => {
            const isHidden = formSearch.style.display === 'none';
            formSearch.style.display = isHidden ? 'block' : 'none';
            isotipo.style.display = isHidden ? 'none' : 'block';
            if (isHidden) inputSearch.focus();
        };

        inputSearch.oninput = (e) => {
            const term = e.target.value.toLowerCase().trim();
            if (term.length < 2) {
                dropdown.style.display = 'none';
                return;
            }

            const results = series.filter(s => s.nombre.toLowerCase().includes(term));
            dropdown.innerHTML = results.map(s => `
                <li onclick="window.abrirModalSerie(${s.id})">
                    <img src="${s.poster}" style="width: 30px; height: 40px; border-radius: 4px;">
                    <span>${s.nombre}</span>
                </li>
            `).join('');
            dropdown.style.display = results.length ? 'block' : 'none';
        };

        // Cerrar dropdown al hacer click fuera
        document.addEventListener('click', (e) => {
            if (!formSearch.contains(e.target) && e.target !== btnBuscar) {
                dropdown.style.display = 'none';
            }
        });
    }

    // --- 4. Modal de Detalles (Lógica Principal de home.php) ---
    window.abrirModalSerie = function (id) {
        const item = series.find(s => s.id === id);
        if (!item) return;

        const modalContenido = document.getElementById('contenido');
        const caps = capitulos.filter(c => c.nombre_id === id);

        let capsHtml = caps.length > 0 ? caps.map(cap => `
            <li onclick="window.abrirVideo('${cap.url}')">
                ${cap.caratula ? `<img src="${cap.caratula}" alt="cap">` : ''}
                <div>
                    <h1>${cap.nombre || 'Capítulo'}</h1>
                    <p>${cap.info || 'Sin descripción adicional.'}</p>
                </div>
            </li>
        `).join('') : '<p style="text-align:center; padding:1.5rem; color:gray;">Próximamente disponible.</p>';

        modalContenido.innerHTML = `
            <div class="content">
                <img id="salir_serie" src="../../assets/back-black.png" alt="Cerrar" onclick="window.cerrarModal()">
                
                <button onclick="window.registrarClick(${item.id})" type="button" id="fav">
                    <img src="../../assets/star.png">
                </button> 

                <img id="ser_post_pop" src="${item.poster}" alt="Poster">

                <div class="infoBox">
                    <h1>${item.nombre}</h1>
                    <p>${(item.descripcion || '').replace(/\r\n|\n/g, '<br>')}</p>
                </div>

                <div id="características_tecnicas">
                    <img class="about_img" src="../../assets/about.png" alt="Información" onclick="window.toggleInfo()">
                    <img src="../../assets/hd.png" alt="HD">
                    <img src="../../assets/dolby.png" alt="Dolby">
                    <button id="temp" onclick="window.toggleTemp()">Temporadas</button>
                    <ul id="ultemp" style="display:none;">
                        <li>Temporada 1</li>
                    </ul>
                </div>

                <button id="ser_ver" onclick="window.abrirVideo('${caps[0]?.url || ''}')">VER AHORA</button>

                <ul class="epis">
                    ${capsHtml}
                </ul>
            </div>
        `;
        modalContenido.style.display = 'flex';
        document.getElementById('dropdown').style.display = 'none';
    };

    window.cerrarModal = () => {
        document.getElementById('contenido').style.display = 'none';
    };

    window.toggleInfo = () => {
        const info = document.querySelector('.infoBox');
        if (info) info.classList.toggle('mostrar');
    };

    window.toggleTemp = () => {
        const temp = document.getElementById('ultemp');
        if (temp) temp.style.display = temp.style.display === 'none' ? 'block' : 'none';
    };

    window.abrirVideo = (url) => {
        if (!url) {
            alert("Contenido no disponible todavía.");
            return;
        }
        localStorage.setItem('movieUrl', url);
        window.location.href = './video.html';
    };

    window.registrarClick = (id) => {
        const user = JSON.parse(localStorage.getItem('currentUser'));
        if (!user) return;

        let favs = JSON.parse(localStorage.getItem('localFavoritos') || '[]');
        if (!favs.find(f => f.usuarioid === user.id && f.serieid === id)) {
            favs.push({ usuarioid: user.id, serieid: id });
            localStorage.setItem('localFavoritos', JSON.stringify(favs));
            console.log("Favorito guardado localmente:", id);
            // Podrías añadir un efecto visual aquí
        }
    };

    // --- Inicialización DOM ---
    document.addEventListener("DOMContentLoaded", () => {
        initUI();
        setupSearch();
        const savedTheme = localStorage.getItem("theme") || "dark";
        applyTheme(savedTheme);
    });

})();
