import 'package:dukkentek/App/Features/Search/Blocs/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  bool isSelected;
  SearchBar({
    Key? key,
    this.isSelected = false ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w , vertical: 20.h),
      height: 0.08.sh,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black26 , width: 1),
        color: Colors.white70
      ),
      child: Row(
        children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                onChanged: (value){
                  print(value);
                  context.read<SearchBloc>().add(OnSearchEvent(controller.text));
                  },
                  decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  border: InputBorder.none,
                  hintText: 'search  ..',
                  suffixIcon: isSelected ? InkWell(
                  onTap: (){

                  },
                  child: Icon(Icons.close , color: Colors.black54 ,size: 25.sp,),
                  ): const SizedBox(),
                  prefixIcon: Icon(Icons.search , color: Colors.black54 ,size: 25.sp,),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
