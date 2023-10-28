import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/common/widgets/tags.dart';
class BlogExpCard extends StatelessWidget {
  const BlogExpCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:32.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: GlobalVariables.shadowEffect,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2)),
            height: height*0.169527897,
            width: width*0.888372093,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/icons/figma.png.png'),
                    ),
                    Expanded(
                          child: Text('Powerful Design System that will help many to know and grow',
                          style: GlobalVariables.textBold_20.copyWith(color: Colors.black),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('assets/icons/blog_arrow.png'),
                    ),
                  ],
                ),
                    
                 const Padding(
                   padding: EdgeInsets.only(left:16.0),
                   child: Row(
                          children: [
                            Tags(tagName: 'hardware'),
                            SizedBox(width: 4),
                            Tags(tagName: 'arduino'),
                            SizedBox(width: 4),
                            Tags(tagName: '...')
                          ],
                        ),
                 )
              ],
            ),
      ),
    );
  }
}
