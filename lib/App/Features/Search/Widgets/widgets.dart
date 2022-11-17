import 'package:dukkentek/App/Features/Home/Blocs/listing/eventsdb_bloc.dart';
import 'package:dukkentek/App/Features/Search/Blocs/add_cubit.dart';
import 'package:dukkentek/App/Utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/item_card.dart';
import '../../Home/Models/event_db_model.dart';
import '../Models/event.dart';

class ErrorRequestView extends StatelessWidget {
  const ErrorRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Error Request ',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.sp),
      ),
    );
  }
}

class NoResult extends StatelessWidget {
  const NoResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No Result',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.sp),
      ),
    );
  }
}

class Init extends StatelessWidget {
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No Data',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20.sp),
      ),
    );
  }
}

class EventsView extends StatelessWidget {
  List<Event> events;

  EventsView({
    Key? key,
    required this.events,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return BlocConsumer<AddCubit, AddState>(
            listener: (context, state) {
              if (state is OnAddedSuccefully) toastMe('added Succesfuly');
              if (state is OnItemExist) toastMe('Already Added');
            },
            builder: (context, state) {
              return SearchItem(
                id: events[index].id,
                description: events[index].description,
                eventName: events[index].title,
                date:
                    '${events[index].datetimeLocal?.year}/${events[index].datetimeLocal?.month}/${events[index].datetimeLocal?.day}',
              );
            },
          );
        });
  }
}

class EventsdbView extends StatelessWidget {
  List<EventDB> events;

  EventsdbView({
    Key? key,
    required this.events,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<EventsdbBloc>().add(OnRefreshEvent());
      },
      child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return ItemCard(
              eventName: events[index].title,
              date: events[index].dateTime,
              description: events[index].description,
              id: events[index].id,
              isFavorited: events[index].isFavorite ?? false,
            );
          }),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        valueColor: const AlwaysStoppedAnimation(Colors.blueGrey),
        strokeWidth: 7,
      ),
    );
  }
}
