import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular/app/app_module.dart';
import 'package:teste_modular/app/modules/home/pages/details/details_bloc.dart';
import 'package:teste_modular/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());
  DetailsBloc bloc;

  setUp(() {
    bloc = HomeModule.to.get<DetailsBloc>();
  });

  group('DetailsBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<DetailsBloc>());
    });
  });
}
