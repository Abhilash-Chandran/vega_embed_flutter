'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "0df4cbd1749a3db77043768c08e74903",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/js/vega-embed@5.js": "9acd320860106e71ed4de72b5213ae11",
"assets/js/vega-lite@4.js": "25c65ff436bac11cb272092088f48be8",
"assets/js/vega@5.js": "9df1daba283619a34c5625e0f456ba02",
"assets/js/visualization.png": "717b588c3ecd8c4619e26bdf529c4a5b",
"assets/lib/examples/example1.dart": "5ea2c35969c75e82ba9f38050cb0fa7a",
"assets/lib/examples/example10.dart": "43dd1da6411c749f83d02bec7b02985a",
"assets/lib/examples/example11.dart": "cc853e701d6ab3cb2589aa2a3d2a1c01",
"assets/lib/examples/example2.dart": "159355f1d238cde04cccc741cb0ca657",
"assets/lib/examples/example3.dart": "46c4bf4df0d866ae81a2fff97b128ad7",
"assets/lib/examples/example4.dart": "6b7b5c422a41d9d1c929544f9461a705",
"assets/lib/examples/example5.dart": "b69438851d7a7f95644890cfd3f09321",
"assets/lib/examples/example6.dart": "4339f86f1878a939de92b0bf2c5a4064",
"assets/lib/examples/example7.dart": "d0d931113b838e9b540b78dbec0490df",
"assets/lib/examples/example8.dart": "694de751cab0816322f4c48622250fed",
"assets/lib/examples/example9.dart": "c8ba5722d484637c858802f66aeffa78",
"assets/lib/examples/examples.dart": "b954bb85ad1a1ab361cd6597a2585790",
"assets/NOTICES": "d54879372466ff30b79a0557dcb8272b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/vega_lite_specs/bar_chart%2520copy.json": "f5b5470a26e1ff227732b12a5f89152e",
"assets/vega_lite_specs/bar_chart.json": "f5ba9f26591c09606e3dc577e0251899",
"assets/vega_lite_specs/interactive_index_chart.vl.json": "769dd24fa4bad597b3a02a82e3ff23ac",
"assets/vega_lite_specs/interactive_multiline_plot.json": "a5d6ba6d7e8b4fe9d1e94acf930a3747",
"assets/vega_lite_specs/interactive_splom.json": "f6aea992da401942107a4bec5d0e5dac",
"index.html": "7c329d2dc754766bae799870836cd187",
"/": "7c329d2dc754766bae799870836cd187",
"main.dart.js": "2be396e8f8aea481439f405694e36289"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
