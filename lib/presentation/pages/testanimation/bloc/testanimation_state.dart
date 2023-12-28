part of 'testanimation_bloc.dart';

/// {@template testanimation_state}
/// TestanimationState description
/// {@endtemplate}
class TestanimationState extends Equatable {
  /// {@macro testanimation_state}
  const TestanimationState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current TestanimationState with property changes
  TestanimationState copyWith({
    String? customProperty,
  }) {
    return TestanimationState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template testanimation_initial}
/// The initial state of TestanimationState
/// {@endtemplate}
class TestanimationInitial extends TestanimationState {
  /// {@macro testanimation_initial}
  const TestanimationInitial(this.newText) : super();
  final String newText;
}
