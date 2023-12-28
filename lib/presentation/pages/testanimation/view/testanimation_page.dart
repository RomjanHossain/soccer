import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:soccer/presentation/pages/testanimation/bloc/bloc.dart';
import 'package:soccer/presentation/pages/testanimation/widgets/testanimation_body.dart';

/// {@template testanimation_page}
/// A description for TestanimationPage
/// {@endtemplate}
class TestanimationPage extends StatelessWidget {
  /// {@macro testanimation_page}
  const TestanimationPage({super.key});

  /// The static route for TestanimationPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
        builder: (_) => const TestanimationPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestanimationBloc(),
      child: Scaffold(
        body: TestanimationView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('init');
            context
                .read<TestanimationBloc>()
                .add(CustomTestanimationEvent('Initial'));
            Future.delayed(1.seconds, () {
              print('Processing');

              context
                  .read<TestanimationBloc>()
                  .add(CustomTestanimationEvent('Processing'));
            });
            Future.delayed(1.seconds, () {
              print('Complete');

              context
                  .read<TestanimationBloc>()
                  .add(CustomTestanimationEvent('Complete'));
            });
          },
        ),
      ),
    );
  }
}

/// {@template testanimation_view}
/// Displays the Body of TestanimationView
/// {@endtemplate}
class TestanimationView extends StatelessWidget {
  /// {@macro testanimation_view}
  const TestanimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return TestanimationBody(
      text: 'Hey',
    );
  }
}
