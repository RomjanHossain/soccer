part of 'testanimation_bloc.dart';

abstract class TestanimationEvent extends Equatable {
  const TestanimationEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_testanimation_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomTestanimationEvent extends TestanimationEvent {
  /// {@macro custom_testanimation_event}
  const CustomTestanimationEvent(this.newText);
  final String newText;
}
