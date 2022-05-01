import 'package:equatable/equatable.dart';

abstract class RouterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomePageEvent extends RouterEvent {}

class PrincipalPageEvent extends RouterEvent {}
