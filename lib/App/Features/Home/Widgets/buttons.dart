import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Search/Views/search_view.dart';

class SearchButton extends StatelessWidget {

  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchView()),
          );
        },
        child: Icon(
          Icons.search,
          color: Colors.black,
          size: 30.sp,
        ),
      ),
    );
  }
}
