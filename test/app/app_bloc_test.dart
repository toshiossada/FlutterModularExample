import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular/app/app_module.dart';
import 'package:teste_modular/app/app_bloc.dart';
import 'package:teste_modular/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());
  AppBloc bloc;

  setUp(() {
    bloc = AppModule.to.get<AppBloc>();
  });

  group('AppBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<AppBloc>());
    });
  });
}
