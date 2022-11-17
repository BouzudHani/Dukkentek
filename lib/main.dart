import 'package:dukkentek/App/Features/Search/Blocs/add_cubit.dart';
import 'package:dukkentek/App/Features/Search/Blocs/search_bloc.dart';
import 'package:dukkentek/App/Utilities/hive_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'App/Features/Home/Blocs/listing/eventsdb_bloc.dart';
import 'App/Features/Home/Views/home_view.dart';

void main() async{
  await Hive.initFlutter();
  await Database.initDB();
  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(create: (context) => SearchBloc()),
          BlocProvider<AddCubit>(create: (context) => AddCubit()),
          BlocProvider<EventsdbBloc>(
              create: (context) => EventsdbBloc()..add(InitEvent())
          ),
        ],
        child: ScreenUtilInit(
            builder: (context , child ){
              return MaterialApp(
                theme: ThemeData(
                    scaffoldBackgroundColor: Colors.grey[200]
                ),
                debugShowCheckedModeBanner: false,
                home: const HomeView(),
              );
            }),
      ));
}
