import 'package:kartik/data/data.dart';
import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "What are your symptoms today?",
              fillColor: AppColors.KWhite,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Images.search,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
          ),

        ],
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16.0), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 30,
          offset: const Offset(0, 14),
        )
      ]),
    );
  }
}
