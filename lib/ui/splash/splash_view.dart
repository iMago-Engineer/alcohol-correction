import 'package:alcohol_collection/ui/splash/splash_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  static const routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.initialize(),
      builder: (context, model, child) => Scaffold(body: _SplashScreen()),
    );
  }
}

class _SplashScreen extends ViewModelWidget<SplashViewModel> {
  @override
  Widget build(BuildContext context, SplashViewModel model) {
    return Container(
        color: Colors.white, child: Center(child: Text('Ocyake daisuki')));
  }
}