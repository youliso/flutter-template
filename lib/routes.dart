import 'package:get/route_manager.dart';
import 'pages/about/index.dart';

import 'core/router.dart';

PageRouter<String> buildRouter() {
  return PageRouter.defineRoutes(initialRoute: "/about", routes: {
    "/about": RouteItem(() => const AboutPage(), transition: Transition.fadeIn),
  });
}
