import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:task_6/cubits/cubit/filter_cubit.dart';
//import 'package:task_6/cubits/cubit/cubit/password_cubit.dart';
//import 'package:task_6/cubits/cubit/cubit/radiobuttons_cubit.dart';
import 'package:task_6/cubits/cubit/cubic_cubit.dart';
import 'dart:io' show Platform;

/*class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, PasswordState>(
      builder: (context, state) {
        return TextField(
          obscureText: state.isHidden,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                state.isHidden ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                context.read<PasswordCubit>().togglePasswordVisibility();
              },
            ),
          ),
        );
      },
    );
  }
}*/

/*class RadioButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioCubit, int>(
      builder: (context, selectedIndex) {
        return SingleChildScrollView(
          child: Column(
            children: List.generate(20, (index) {
              return RadioListTile<int>(
                title: Text('Option ${index + 1}'),
                value: index,
                groupValue: selectedIndex,
                onChanged: (value) {
                  context.read<RadioCubit>().selectRadio(index);
                },
              );
            }),
          ),
        );
      },
    );
  }
}*/

class UsingCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cubit Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CubicCubit, CubicState>(
              builder: (context, state) {
                if (state is CubicShowText) {
                  return Text('Hello, World!');
                } else if (state is CubicShowImage) {
                  return Image.asset('assets/OIP.jpg'); 
                } else if (state is CubicShowRedCircle) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  );
                }
                return Container();
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<CubicCubit>().showText(),
              child: Text('Show text'),
            ),
            ElevatedButton(
              onPressed: () => context.read<CubicCubit>().showCubitImage(),
              child: Text('Show cubit image'),
            ),
            ElevatedButton(
              onPressed: () => context.read<CubicCubit>().showRedCircle(),
              child: Text('Show the red circle'),
            ),
            ElevatedButton(
              onPressed: () => context.read<CubicCubit>().reset(),
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
