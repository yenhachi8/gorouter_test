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
            context.go('/settings');
          },
          child: Text('tap'),
        ),
      ),
    );
  }
}
