import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetState{initial,gained,lost}

class InternetCubit extends Cubit<InternetState>{

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  InternetCubit():super(InternetState.initial){
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
      if(result == ConnectivityResult.mobile||result==ConnectivityResult.wifi){
        emit(InternetState.gained);
      }else{
        emit(InternetState.lost);
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    // TODO: implement close
    return super.close();
  }
}