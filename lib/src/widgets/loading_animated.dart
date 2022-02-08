import 'package:daily_reminder/src/services/colors.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class CustomAnimatedLiquidLinearProgressIndicator extends StatefulWidget {
  const CustomAnimatedLiquidLinearProgressIndicator({Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      CustomAnimatedLiquidLinearProgressIndicatorState();
}

class CustomAnimatedLiquidLinearProgressIndicatorState
    extends State<CustomAnimatedLiquidLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  final Cores cores = Cores();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animationController!.addListener(() => setState(() {}));
    // _animationController!.repeat();
    _animationController!.animateTo(3);

    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 4000));
    Navigator.of(context).pushReplacementNamed('/Menu');
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController!.value * 100;
    final alturaTela = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: alturaTela,
        child: LiquidLinearProgressIndicator(
          value: _animationController!.value,
          valueColor: AlwaysStoppedAnimation(cores.laranjaum),
          backgroundColor: cores.quaseWhite,
          direction: Axis.vertical,
          center: Center(
            child: Text(
              percentage < 99.9
                  ? "${percentage.toStringAsFixed(0)}%"
                  : "Carregado!",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
