import 'package:alsalam_landing/app_provider.dart';
import 'package:alsalam_landing/main.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(
    create: (_) => sl<AppProvider>(),
  ),
];
