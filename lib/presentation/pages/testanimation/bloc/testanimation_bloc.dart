import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'testanimation_event.dart';
part 'testanimation_state.dart';

class TestanimationBloc extends Bloc<TestanimationEvent, TestanimationState> {
  TestanimationBloc() : super(const TestanimationInitial('Detault')) {
    on<CustomTestanimationEvent>(_onCustomTestanimationEvent);
  }

  FutureOr<void> _onCustomTestanimationEvent(
    CustomTestanimationEvent event,
    Emitter<TestanimationState> emit,
  ) {
    // event.newText
    emit(TestanimationInitial(event.newText));
  }
}
