import 'package:first_flu_app/bloc_state_management/cubit/home_cubit.dart';
import 'package:first_flu_app/bloc_state_management/states/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
          listener: (BuildContext context, HomeState state) {
        if (state is HomeFailedState) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(state.errorMessage ?? ''),
              );
            },
          );
        }
      }, builder: (ctx, state) {
        return Scaffold(
          appBar: AppBar(title: Text("counter")),
          // ignore: prefer_const_constructors
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state is HomeInitState) Text('start Counter'),
                if (state is HomeSuccessState)
                  Text(
                    'clicks: ${state.counterVal}',
                  ),
                if (state is HomeLoadingState) CircularProgressIndicator(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // ctx.read<HomeCubit>().add(IncrementEvent());
              ctx.read<HomeCubit>().increment();
            },
          ),
        );
      }),
    );
  }
}
