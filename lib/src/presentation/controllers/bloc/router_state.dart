import 'package:equatable/equatable.dart';

abstract class RouterState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PrincipalPageState extends RouterState {}

class HomePageState extends RouterState {}

class ProductPageState extends RouterState {}

class CartPageState extends RouterState {}

class OrderPageState extends RouterState {}

class NullPageState extends RouterState {}

class SearchPageState extends RouterState {}
