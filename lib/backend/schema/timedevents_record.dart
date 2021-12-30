import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'timedevents_record.g.dart';

abstract class TimedeventsRecord
    implements Built<TimedeventsRecord, TimedeventsRecordBuilder> {
  static Serializer<TimedeventsRecord> get serializer =>
      _$timedeventsRecordSerializer;

  @nullable
  int get distance;

  @nullable
  DateTime get currentTime;

  @nullable
  String get eventType;

  @nullable
  int get unitOfdistance;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TimedeventsRecordBuilder builder) => builder
    ..distance = 0
    ..eventType = ''
    ..unitOfdistance = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('timedevents');

  static Stream<TimedeventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TimedeventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TimedeventsRecord._();
  factory TimedeventsRecord([void Function(TimedeventsRecordBuilder) updates]) =
      _$TimedeventsRecord;

  static TimedeventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTimedeventsRecordData({
  int distance,
  DateTime currentTime,
  String eventType,
  int unitOfdistance,
}) =>
    serializers.toFirestore(
        TimedeventsRecord.serializer,
        TimedeventsRecord((t) => t
          ..distance = distance
          ..currentTime = currentTime
          ..eventType = eventType
          ..unitOfdistance = unitOfdistance));
