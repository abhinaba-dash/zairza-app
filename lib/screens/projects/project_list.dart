import 'package:flutter/material.dart';
import 'package:zairza_app/common/widgets/project_card.dart';
import 'package:zairza_app/screens/projects/get_service.dart';

class ProjectsList extends StatelessWidget {
  final String? state;
  final int? maxProjectsToShow;

  const ProjectsList({
    super.key,
    this.maxProjectsToShow,
    this.state,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return FutureBuilder<List<dynamic>>(
      future: ApiService().retrieveEvents(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                CircularProgressIndicator(),
              ]);
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No projects found.'));
        } else {
          // ignore: no_leading_underscores_for_local_identifiers
          List<dynamic> _events = snapshot.data!;
          int projectsToShow = maxProjectsToShow ?? _events.length;
          List<dynamic> reversedEvents =
              _events.reversed.toList(); // Reversing the list of events

          return Column(
            children: reversedEvents.sublist(0, projectsToShow).map((event) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.01072961373,
                  top: height * 0.02575107296,
                ),
                child: ProjectCard(
                  title: event['title'] ?? 'No Title',
                  date: event['date_and_time'] ?? 'No Date',
                  wing: event['wing'] ?? 'No Wing',
                  state: state ?? 'Ongoing',
                ),
              );
            }).toList(),
          );
        }
      },
    );
  }
}
