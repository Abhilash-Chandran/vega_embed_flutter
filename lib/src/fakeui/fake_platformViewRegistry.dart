/// A work around to keep pub.dev happy about missing implementation for
/// platformViewResitery
// ignore: camel_case_types
class platformViewRegistry {
  /// A decoy method for registerViewFactory from [dart:ui.platformViewRegistery]
  static dynamic registerViewFactory(String viewId, dynamic cb) {
    throw UnimplementedError();
  }
}
