import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:soccer/presentation/pages/testanimation/bloc/bloc.dart';

/// {@template testanimation_body}
/// Body of the TestanimationPage.
///
/// Add what it does
/// {@endtemplate}
class TestanimationBody extends StatelessWidget {
  /// {@macro testanimation_body}
  const TestanimationBody({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestanimationBloc, TestanimationState>(
      builder: (context, state) {
        if (state is TestanimationInitial) {
          return AnimatedSwitcher(
            duration: 1.seconds,
            child: Center(
              child: Text(
                state.newText,
                key: Key(text),
              ),
            ),
          );
        }
        return Text('hola');
      },
    );
  }
}
