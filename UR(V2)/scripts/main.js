// main.js - Manejo de funcionalidades globales (opcional)

console.log("UnRecord main.js cargado.");

// La registración del Service Worker se maneja en index.html o se puede centralizar aquí.
// Si se centraliza aquí, debe ser relativa a la raíz del sitio, no al archivo .js.
if ('serviceWorker' in navigator) {
    window.addEventListener('load', function () {
        navigator.serviceWorker.register('sw.js').then(function (registration) {
            console.log('Service Worker registrado con éxito:', registration.scope);
        }).catch(function (error) {
            console.log('Error al registrar el Service Worker:', error);
        });
    });
}
