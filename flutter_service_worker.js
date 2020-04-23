'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2b0bcd3d1ad16be4ee248085eda12824",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/js/vega-embed@5.js": "9acd320860106e71ed4de72b5213ae11",
"assets/js/vega-lite@4.js": "25c65ff436bac11cb272092088f48be8",
"assets/js/vega@5.js": "9df1daba283619a34c5625e0f456ba02",
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
"assets/LICENSE": "15eb8df32c950967f7e3b504240da44c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/vega_lite_specs/bar_chart.json": "f5ba9f26591c09606e3dc577e0251899",
"assets/vega_lite_specs/interactive_index_chart.vl.json": "69b8219e508f91df2ce3e73159829265",
"assets/vega_lite_specs/interactive_multiline_plot.json": "a5d6ba6d7e8b4fe9d1e94acf930a3747",
"assets/vega_lite_specs/interactive_splom.json": "f6aea992da401942107a4bec5d0e5dac",
"index.html": "7c329d2dc754766bae799870836cd187",
"/": "7c329d2dc754766bae799870836cd187",
"main.dart.js": "6a934e98f1b17d9f44ab888bae717a97"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
