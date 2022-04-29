import 'package:equatable/equatable.dart';

abstract class RouterState extends Equatable {
  const RouterState();
  @override
  List<Object?> get props => [];
}

class PrincipalPageState extends RouterState {
  final String? extraPageContent;

  const PrincipalPageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}

class ProductPageState extends RouterState {
  final String? extraPageContent;

  const ProductPageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}

class OrderPageState extends RouterState {
  final String? extraPageContent;

  const OrderPageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}

class HomePageState extends RouterState {
  final String? extraPageContent;

  const HomePageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}

class CartPageState extends RouterState {
  final String? extraPageContent;

  const CartPageState([this.extraPageContent]);

  @override
  List<Object?> get props => [extraPageContent];
}
