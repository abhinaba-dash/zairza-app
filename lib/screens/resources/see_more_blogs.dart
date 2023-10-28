import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/common/widgets/blog_expanded_card.dart';
class SeeMoreBlogs extends StatelessWidget {
  const SeeMoreBlogs({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
   
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.09451,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: const Icon(Icons.close),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Blogs',
        style: GlobalVariables.textBold_24.copyWith(color: Colors.black),
        ),
      ),
      body: const Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
            BlogExpCard(),
            SizedBox(height: 16.0,),
            BlogExpCard(),
            SizedBox(height: 16.0,),
            BlogExpCard(),
            SizedBox(height: 16.0,),
          ],
          ),
        ),
      ),
    );
  }
}