import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_tasks_record.g.dart';

abstract class UserTasksRecord
    implements Built<UserTasksRecord, UserTasksRecordBuilder> {
  static Serializer<UserTasksRecord> get serializer =>
      _$userTasksRecordSerializer;

  @nullable
  String get taskName;

  @nullable
  bool get isDone;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserTasksRecordBuilder builder) => builder
    ..taskName = ''
    ..isDone = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userTasks');

  static Stream<UserTasksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserTasksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserTasksRecord._();
  factory UserTasksRecord([void Function(UserTasksRecordBuilder) updates]) =
      _$UserTasksRecord;

  static UserTasksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserTasksRecordData({
  String taskName,
  bool isDone,
}) =>
    serializers.toFirestore(
        UserTasksRecord.serializer,
        UserTasksRecord((u) => u
          ..taskName = taskName
          ..isDone = isDone));
