
import 'dart:async';

class CounterBloc{
  int _counter = 0;

  StreamController<int> _streamController = StreamController<int>();

  CounterBloc(){
    _streamController.sink.add(_counter);
  }

  void incrementCounter() {
    _counter++;
    _streamController.sink.add(_counter);
  }

  Stream<int> getStream(){
    return _streamController.stream;
  }

  void dispose(){
    _streamController.close();
  }

}