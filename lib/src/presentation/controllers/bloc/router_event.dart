import 'package:equatable/equatable.dart';

abstract class RouterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomePageEvent extends RouterEvent {}

class PrincipalPageEvent extends RouterEvent {}

class ProductPageEvent extends RouterEvent {}

class CartPageEvent extends RouterEvent {}

class OrderPageEvent extends RouterEvent {}

class NullPageEvent extends RouterEvent {}

class SearchPageEvent extends RouterEvent {}
