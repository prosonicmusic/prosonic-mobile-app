part of 'splash_bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
}

class AppStarted extends SplashEvent {
  @override
  List<Object?> get props => [];
}
