// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:go_router_test/app_lib.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key, this.title});
//   String? title;
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title ?? 'No Title')),
//       body: Center(child: Text('Home')),
//     );
//   }
// }
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final m = {'name': Parking(name: '50嵐', address: '三多路')};
            context.go(
              '/settings/$m',
              extra: m,
            );
            // context
            //     .goNamed('/settings', queryParameters: {'query': 'para query'});
          },
          child: Text('tap'),
        ),
      ),
    );
  }
}

class Parking {
  String name;
  String address;
  Parking({
    required this.name,
    required this.address,
  });
}
