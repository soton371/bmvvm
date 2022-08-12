import 'package:bmvvm/cubits/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VInternetCheck extends StatelessWidget {
  const VInternetCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: BlocBuilder<InternetCubit,InternetState>(
            builder: (BuildContext context,InternetState state){
              if(state == InternetState.gained){
                return const Text('Internet Connected');
              }else if(state == InternetState.lost){
                return const Text('No internet connected');
              }else{
                return const Text('Loading...');
              }
            }
        )
      ),
    );
  }
}

