import 'package:teste_modular/app/modules/home/pages/details/details_bloc.dart';
import 'package:teste_modular/app/modules/home/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular/app/modules/home/home_page.dart';
import 'package:teste_modular/app/modules/home/pages/details/details_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsBloc()),
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/home', child: (_, args) => HomePage()),
        Router('/details/:index',
            child: (_, args) => DetailsPage(
                  index: args.params['index'],
                ),
            transition: TransitionType.rotate),
        Router('/details',
            child: (_, args) => DetailsPage(
                  index: args.data,
                )),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
