import 'package:app_devnology/src/presentation/controllers/bloc/router_event.dart';
import 'package:app_devnology/src/presentation/controllers/bloc/router_state.dart';
import 'package:bloc/bloc.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc() : super(PrincipalPageState()) {
    on<HomePageEvent>(
      ((event, emit) {
        emit(
          PrincipalPageState(),
        );
        emit(
          HomePageState(),
        );
      }),
    );

    on<PrincipalPageEvent>(
      (event, emit) => emit(
        PrincipalPageState(),
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
