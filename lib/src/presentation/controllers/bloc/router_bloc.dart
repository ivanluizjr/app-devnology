import 'package:app_devnology/src/presentation/controllers/bloc/router_event.dart';
import 'package:app_devnology/src/presentation/controllers/bloc/router_state.dart';
import 'package:bloc/bloc.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc() : super(PrincipalPageState()) {
    on<HomePageEvent>(
      (event, emit) {
        emit(
          PrincipalPageState(),
        );
        emit(
          HomePageState(),
        );
      },
    );

    on<PrincipalPageEvent>(
      (event, emit) => emit(
        PrincipalPageState(),
      ),
    );

    on<ProductPageEvent>(
      (event, emit) {
        emit(
          HomePageState(),
        );
        emit(
          ProductPageState(),
        );
      },
    );

    on<CartPageEvent>((event, emit) {
      emit(
        HomePageState(),
      );
      emit(
        CartPageState(),
      );
    });

    on<NullPageEvent>(
      (event, emit) => emit(
        NullPageState(),
      ),
    );

    on<SearchPageEvent>(
      (event, emit) => emit(
        SearchPageState(),
      ),
    );
  }
  // void navigateToPrinciapal() {
  //   emit(PrincipalPageState());
  // }

  // void navigateToHome() {
  //   emit(HomePageState());
  // }

  // Stream<RouterState> mapEventToState(RouterEvent event) async* {
  //   switch (event) {
  //     case RouterEvent.principalPage:
  //       yield PrincipalPageState();
  //       break;
  //     case RouterEvent.homePage:
  //       yield HomePageState();
  //       break;
  //     case RouterEvent.productPage:
  //       yield ProductPageState();
  //       break;
  //     case RouterEvent.cartPage:
  //       yield CartPageState();
  //       break;
  //     case RouterEvent.orderPage:
  //       yield OrderPageState();
  //       break;
  //   }
  // }
}
