import 'package:flutter/material.dart';
import 'package:zairza_app/constants/global_variables.dart';
import 'package:zairza_app/screens/projects/project_list.dart';

class CompletedProjects extends StatelessWidget {
  const CompletedProjects({super.key});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05581395348,
              vertical: width * 0.05581395348),
          child: Column(children: [
            SearchBar(
              shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              )),
              side: const WidgetStatePropertyAll(BorderSide(width: 2)),
              hintStyle:
                  const WidgetStatePropertyAll(GlobalVariables.textMedium_14),
              hintText: "Search from completed projects",
              leading: const Icon(Icons.search),
              padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: width * 0.01860465116 * 2)),
              elevation: const WidgetStatePropertyAll(0),
            ),
            const ProjectsList(
              state: 'Completed',
            )
          ]),
        ),
      ),
    );
  }
}
