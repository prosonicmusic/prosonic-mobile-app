import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashEvent>((event, emit) {});
    on<AppStarted>((event, emit) async {
      await Future.delayed(Duration(seconds: 2));
      emit(NavigateToHome());
    });
  }
}