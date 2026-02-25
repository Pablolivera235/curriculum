const CACHE_NAME = 'unrecord-cache-v1';
const ASSETS_TO_CACHE = [
    './index.html',
    './manifest.json',
    './assets/iconor.png',
    './assets/isotipo_dark.png',
    './assets/icono.png',
    './styles.css',
    './scripts/main.js',
    './bd/usuarios.js',
    './bd/series.js',
    './bd/capitulos.js',
    './bd/perfil.js',
    './pages/home/home.html',
    './pages/home/style.css',
    './pages/home/script.js'
];

// Install event
self.addEventListener('install', (event) => {
    console.log('[Service Worker] Install: Caching essential assets');
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then((cache) => {
                return cache.addAll(ASSETS_TO_CACHE).catch(err => {
                    console.error('[Service Worker] Cache.addAll failed (some assets may be missing):', err);
                });
            })
    );
    self.skipWaiting();
});

// Activate event
self.addEventListener('activate', (event) => {
    console.log('[Service Worker] Activate: Clearing old caches');
    event.waitUntil(
        caches.keys().then((cacheNames) => {
            return Promise.all(
                cacheNames.map((cache) => {
                    if (cache !== CACHE_NAME) {
                        return caches.delete(cache);
                    }
                })
            );
        })
    );
    return self.clients.claim();
});

// Fetch event - Network First Strategy
self.addEventListener('fetch', (event) => {
    if (event.request.method !== 'GET') return;

    event.respondWith(
        fetch(event.request)
            .then((response) => {
                // Return original response if not sucessful or from other origins
                if (!response || response.status !== 200 || response.type !== 'basic') {
                    return response;
                }

                // Clone and cache the successfully fetched resource
                const responseToCache = response.clone();
                caches.open(CACHE_NAME).then((cache) => {
                    cache.put(event.request, responseToCache);
                });

                return response;
            })
            .catch(() => {
                // If network fails, return the cached version if it exists
                return caches.match(event.request).then((cachedResponse) => {
                    if (cachedResponse) {
                        return cachedResponse;
                    }

                    // Fallback to index.html for navigation requests (maintaining app context)
                    if (event.request.mode === 'navigate') {
                        return caches.match('./index.html');
                    }
                });
            })
    );
});
