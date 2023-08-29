import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SermaoRecord extends FirestoreRecord {
  SermaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _tag = snapshotData['tag'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sermao');

  static Stream<SermaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SermaoRecord.fromSnapshot(s));

  static Future<SermaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SermaoRecord.fromSnapshot(s));

  static SermaoRecord fromSnapshot(DocumentSnapshot snapshot) => SermaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SermaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SermaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SermaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SermaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSermaoRecordData({
  String? titulo,
  String? descricao,
  String? tag,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descricao': descricao,
      'tag': tag,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class SermaoRecordDocumentEquality implements Equality<SermaoRecord> {
  const SermaoRecordDocumentEquality();

  @override
  bool equals(SermaoRecord? e1, SermaoRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.tag == e2?.tag &&
        e1?.date == e2?.date;
  }

  @override
  int hash(SermaoRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.descricao, e?.tag, e?.date]);

  @override
  bool isValidKey(Object? o) => o is SermaoRecord;
}
