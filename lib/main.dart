import 'package:flutter/material.dart';
import 'ui/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';

//   ilovada ko'p tillilik
//   1. easy_localization package ni o'rnatish
//   2. assets ga folder qo'shish kerak
//   3. assetsdan fayllarga yo'l ko'rsatamiz
//   4. Easy localizationni main methodiga qo'shib qo'yamiz
//   5. MaterialApp ni EasyLocalizationga o'raymiz
//   6. MaterailApp tarkibiga qo'shib qo'yamiz
//   7. Json fayllarga tillarni kiritib chiqamiz
//   8. ui  da ishlatib ko'ramiz
//   9. tilni almashtirish funcsiyasini ishlatamiz

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale('uz', 'UZ'),
        Locale('en', 'EN'),
        Locale('ru', 'RU'),
      ],
      path: 'assets/translations',
      useOnlyLangCode: true,
      fallbackLocale: const Locale('en', 'EN'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
