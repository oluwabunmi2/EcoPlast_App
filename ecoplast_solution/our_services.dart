import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Our Services'),
        ),
        body: ServiceList(),
      ),
    );
  }
}

class Service {
  final String title;
  final String description;
  final IconData icon;

  Service({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class ServiceList extends StatelessWidget {
  final List<Service> services = [
    Service(
      title: 'Garbage Recycling',
      description: 'We recycle waste materials for a cleaner environment.',
      icon: Icons.recycle,
    ),
    Service(
      title: 'Education',
      description: 'Learn about waste management and eco-friendly practices.',
      icon: Icons.school,
    ),
    Service(
      title: 'Volunteer Opportunities',
      description: 'Join us in our efforts to protect the environment.',
      icon: Icons.volunteer_activism,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return ListTile(
          leading: Icon(service.icon),
          title: Text(service.title),
          subtitle: Text(service.description),
          onTap: () {
            // Will subsequently Implement actions when a service is tapped
            // For example, navigate to a detailed service page
          },
        );
      },
    );
  }
}
