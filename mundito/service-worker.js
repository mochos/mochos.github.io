self.addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request).then(function(response) {
      if (response) {
        return response;
      }
      return fetch(event.request);
    })
  );
});

self.addEventListener('activate', function(event) {
  event.waitUntil(
    caches.delete('my-site-cache')
  );
  caches.open('my-site-cache').then(function(cache) {
    cache.addAll([
      '/',
      '/index.html',
      '/estilos.css'
    ]);
  });
});