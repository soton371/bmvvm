import 'package:bmvvm/view_model/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: BlocBuilder<CounterCubit,int>(
          builder: (_,count)=>Center(child: Text(count.toString())),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=>context.read<CounterCubit>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
