import 'package:dukkentek/App/Features/Home/Blocs/listing/eventsdb_bloc.dart';
import 'package:dukkentek/App/Features/Home/Views/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Features/Home/Models/event_db_model.dart';
import '../Features/Search/Blocs/add_cubit.dart';

class ItemCard extends StatelessWidget {
  bool isFavorited;
  int? id;
  String? eventName;
  String? date;
  String? description;

  ItemCard({
    Key? key,
    this.isFavorited = false,
    this.eventName,
    this.date,
    this.id,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsScreen(id: id!, title: eventName!, date: date!, description: description!,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    date ?? '',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  context
                      .read<EventsdbBloc>()
                      .add(OnTroggleChangeEvent(eventName!));
                },
                child: isFavorited
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 25.sp,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.black26,
                        size: 25.sp,
                      ))
          ],
        ),
      ),
    );
  }
}

class SearchItem extends StatelessWidget {
  int? id;
  String? eventName;
  String? date;
  String? description;

  SearchItem({
    Key? key,
    this.eventName,
    this.date,
    this.id,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsScreen(id: id!, title: eventName!, date: date!, description: description!,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white70,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    date ?? '',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  context.read<AddCubit>().onAdd(EventDB(
                      id: id!,
                      title: eventName!,
                      dateTime: date!,
                      description: description,
                      isFavorite: false));
                },
                child: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 25.sp,
                )),
          ],
        ),
      ),
    );
  }
}
