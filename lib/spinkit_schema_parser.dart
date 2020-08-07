library spinkit_schema_parser;

import 'package:logging/logging.dart';

import 'schema_parser_initiator.g.dart';

/// A Calculator.
class SpinkitSchemaParser {
  static final Logger _log = Logger('SpinkitSchemaParser');

  // ignore: prefer_final_fields
  static bool _initialized = false;

  /// Register implemented parsers
  static void registerParsers() {
    if (!_initialized) {
      _initialized = true;

      try {
        schemaParserRegisterAllTypeParsers();
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        _log.severe(e);
      }
    }
  }

  /// Do not create an instance...
  SpinkitSchemaParser() {
    throw Exception("Do not create instance of class SchemaWidget. All the"
        " methods are static.");
  }
}
