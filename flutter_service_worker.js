'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c795978b73353f63bb53354e1476759d",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/js/vega-embed@5.js": "9acd320860106e71ed4de72b5213ae11",
"assets/js/vega-lite@4.js": "25c65ff436bac11cb272092088f48be8",
"assets/js/vega@5.js": "9df1daba283619a34c5625e0f456ba02",
"assets/lib/examples/example1.dart": "576a984100c5cb17b4df4ac87a9a4035",
"assets/lib/examples/example2.dart": "02dc259384601dc908fcb45d5f356d1c",
"assets/lib/examples/example3.dart": "92ebf5361e8f8a69984d64324e2609fb",
"assets/lib/examples/example4.dart": "2c9fc4877e57d0fbf73296b1c052e6cd",
"assets/lib/examples/example5.dart": "947f30080d77f059437bdea4baf7cdb7",
"assets/lib/examples/example6.dart": "f4548ce4e25e6dd8a6ece2bc7955ae98",
"assets/lib/examples/example7.dart": "10fd8274a2f7b43347f577a5f06ea0b0",
"assets/lib/examples/example8.dart": "62973b8e9070b43b5424a72accbf26cb",
"assets/lib/examples/examples.dart": "f4bf725a546071d5848a67bf1a391235",
"assets/LICENSE": "15eb8df32c950967f7e3b504240da44c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/vega_lite_specs/bar_chart.json": "f5ba9f26591c09606e3dc577e0251899",
"assets/vega_lite_specs/interactive_index_chart.vl.json": "69b8219e508f91df2ce3e73159829265",
"assets/vega_lite_specs/interactive_multiline_plot.json": "a5d6ba6d7e8b4fe9d1e94acf930a3747",
"assets/vega_lite_specs/interactive_splom.json": "f6aea992da401942107a4bec5d0e5dac",
"index.html": "7c329d2dc754766bae799870836cd187",
"/": "7c329d2dc754766bae799870836cd187",
"main.dart.js": "8b9a4ddded2f81c6c1173c91e667d6ea"
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
