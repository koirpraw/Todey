import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _task = prefs.getString('ff_task') ?? _task;
  }

  SharedPreferences prefs;

  String _task;
  String get task => _task;
  set task(String _value) {
    _task = _value;
    prefs.setString('ff_task', _value);
  }

  List<String> todoTasks = [];

  int count = 0;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
