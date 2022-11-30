import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_cubit/Models/SceenWiseModels/home_screen_cubit_model.dart';
import 'package:sample_cubit/cubit/home_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final TextEditingController currentPassController = TextEditingController();
final TextEditingController newPassController = TextEditingController();
final TextEditingController confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<HomeCubit, HomeCubitModel>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: currentPassController,
                  obscureText: !state.currentPassVisibility,
                  decoration: InputDecoration(
                    labelText: "current passwords",
                    // counterText: AppStrings.forgotPassword,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          top: 16, left: 5, right: 5, bottom: 16),
                      child: SizedBox(
                        height: 4,
                        child: Icon(Icons.password),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        context.read<HomeCubit>().changeCurrentPassVisibility();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 5, right: 5, bottom: 16),
                        child: SizedBox(
                          height: 4,
                          child: state.currentPassVisibility
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: newPassController,
                  obscureText: !state.currentPassVisibility,
                  decoration: InputDecoration(
                    labelText: "new password",
                    // counterText: AppStrings.forgotPassword,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          top: 16, left: 5, right: 5, bottom: 16),
                      child: SizedBox(
                        height: 4,
                        child: Icon(Icons.password),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 16, left: 5, right: 5, bottom: 16),
                        child:
                            SizedBox(height: 4, child: Icon(Icons.visibility)),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  controller: confirmPassController,
                  obscureText: !state.confirmPassVisibility,
                  decoration: InputDecoration(
                    labelText: "confirm password",
                    // counterText: AppStrings.forgotPassword,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(
                          top: 16, left: 5, right: 5, bottom: 16),
                      child: SizedBox(
                        height: 4,
                        child: Icon(Icons.password),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 16, left: 5, right: 5, bottom: 16),
                        child:
                            SizedBox(height: 4, child: Icon(Icons.visibility)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeCubit>().changeCount();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
