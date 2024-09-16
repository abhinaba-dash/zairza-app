import 'package:flutter/material.dart';
import 'package:zairza_app/common/widgets/tags.dart';
import 'package:zairza_app/constants/global_variables.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String date;
  final String wing;
  final String state;
  const ProjectCard(
      {super.key,
      required this.title,
      required this.date,
      required this.wing,
      required this.state});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: GlobalVariables.shadowEffect,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.0465116279),
                child: SizedBox(
                  width: width * 0.48837209302,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GlobalVariables.textMedium_16,
                      ),
                      Text('( $state)',
                          style: GlobalVariables.textMedium_16
                              .copyWith(color: GlobalVariables.primaryColor)),
                      SizedBox(height: height * 0.00858369098),
                      Row(
                        children: [
                          Tags(tagName: wing),
                          const SizedBox(width: 4),
                          const Tags(tagName: 'arduino'),
                          const SizedBox(width: 4),
                          const Tags(tagName: '...')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: height * 0.14270386266,
                  child: Image.asset('assets/images/projectImage.png'))
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(0),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  // strokeAlign: BorderSide.strokeAlignOutside
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date, style: GlobalVariables.textBold_14),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
