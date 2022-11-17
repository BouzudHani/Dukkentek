import 'package:dukkentek/App/Features/Home/Blocs/listing/eventsdb_bloc.dart';
import 'package:dukkentek/App/Features/Search/Blocs/search_bloc.dart';
import 'package:dukkentek/App/Features/Search/Widgets/search_bar.dart';
import 'package:dukkentek/App/Features/Search/Widgets/widgets.dart';
import 'package:dukkentek/App/Utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: InkWell(
          onTap: (){
              context.read<EventsdbBloc>().add(InitEvent());
              Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back , color : Colors.black),
        ),
        title: const Text(
          'Search' ,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
      ),
      body: Column(
          children: [
            SearchBar(),
            Expanded(
              child: BlocBuilder<SearchBloc , SearchState>(
                builder: (context, state) {
                  return (state is OnSuccessRequest ) ?
                            EventsView( events: state.eventsModel.events?? [],)
                        :(state is OnErrorRequest) ?
                            const ErrorRequestView()
                        :(state is OnEmptyResult) ?
                            const NoResult()
                        :(state is OnSearchingState) ?
                            const Loading()
                        : const Init();
                },
              ),
            )
          ],
      ),
    );
  }
}
