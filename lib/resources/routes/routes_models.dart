import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:furniture_app/view/boarding_screen/boarding_view.dart';
import 'package:furniture_app/view/forget_password_screen/forget_password_view.dart';
import 'package:furniture_app/view/login_screen/login_view.dart';
import 'package:furniture_app/view/sign_up_scrren/sign_up_view.dart';
import 'package:get/get.dart';

class RoutesModels {
  static appRoutes() => [
        GetPage(
          name: RoutesNames.boardingPage,
          page: () => BoardingView(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(microseconds: 500),
        ),
        GetPage(
            name: RoutesNames.loginPage,
            page: () => LoginView(),
            transition: Transition.circularReveal,
            transitionDuration: Duration(microseconds: 500)),
        GetPage(
          name: RoutesNames.signUpPage,
          page: () => SignUpView(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(milliseconds: 500)
        ),
        GetPage(name: RoutesNames.forgetPassword, page: () => ForgetPasswordView(),
        transition: Transition.circularReveal,
        transitionDuration: Duration(milliseconds: 500),
        )
      ];
}
