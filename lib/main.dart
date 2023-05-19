// ignore_for_file: depend_on_referenced_packages
import 'package:dressmeup/screens/about_store_product.dart';
import 'package:dressmeup/screens/brands_products_screen.dart';
import 'package:dressmeup/screens/control_screen.dart';
import 'package:dressmeup/screens/electronics_product.dart';
//import 'package:dressmeup/screens/favorite_screen.dart';
import 'package:dressmeup/screens/kid_products_screen.dart';
import 'package:dressmeup/screens/launch_screen.dart';
import 'package:dressmeup/screens/login_screen.dart';
import 'package:dressmeup/screens/men_product_screen.dart';
import 'package:dressmeup/screens/others_products.dart';
import 'package:dressmeup/screens/sign_in_screen.dart';
import 'package:dressmeup/screens/out_boarding_screen.dart';
import 'package:dressmeup/screens/sign_up_screen.dart';
import 'package:dressmeup/screens/verifary_code.dart';
import 'package:dressmeup/screens/verify.dart';
//import 'package:dressmeup/screens/wishList.dart';
import 'package:dressmeup/screens/women_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'network/dio_manage_class.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioManagerClass.getInstance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.abhayaLibre(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: GoogleFonts.abhayaLibre(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.transparent,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: GoogleFonts.abhayaLibre(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )),
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: const [Locale('ar'), Locale('en')],
      locale: const Locale('en'),
      initialRoute: "/launch_screen",
      routes: {
        "/launch_screen": (context) => const LaunchScreen(),
        "/out_boarding_screen": (context) => const OutBoardingScreen(),
        "/login_screen": (context) => const LoginScreen(),
        "/sign_in_screen": (context) => const SignInScreen(),
        "/sign_up_screen": (context) => const SignUpScreen(),
        "/verify": (context) => const Verification(),
        "/verify_code": (context) => const VerificationCode(),
        "/control_screen": (context) => const ControlScreen(),
        "/men_product_screen": (context) => const MenProductScreen(),
        "/women_product_screen": (context) => const WomenProductScreen(),
        "/kid_product_screen": (context) => const KidProductScreen(),
        "/brands_product_screen": (context) => const BrandsProductScreen(),
        "/about_store_product_screen": (context) =>
            const AboutStoreProductScreen(),
        "/electronics_product_screen": (context) =>
            const ElectronicsProductScreen(),
        "/others_product_screen": (context) => const OthersProductScreen(),
      },
    );
  }
}
