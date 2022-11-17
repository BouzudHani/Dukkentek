import 'package:dukkentek/App/Features/Home/Blocs/listing/eventsdb_bloc.dart';
import 'package:dukkentek/App/Features/Home/Widgets/buttons.dart';
import 'package:dukkentek/App/Widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Search/Widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Text(
          'Events',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        actions: const [
          SearchButton(),
        ],
      ),
      body: BlocBuilder<EventsdbBloc , EventsdbState>(
        builder: (BuildContext context, state) {
          return (state is SuccessState) ?
                EventsdbView(events: state.events,)
              :(state is OnTroggleChangeState) ?
                EventsdbView(events: state.events,)
              :(state is ErrorState) ?
          const ErrorRequestView()
              :(state is EmptyState) ?
          const NoResult()
              :(state is LoadingState) ?
          const Loading()
              : const Init();
        },
      )
    );
  }
}
