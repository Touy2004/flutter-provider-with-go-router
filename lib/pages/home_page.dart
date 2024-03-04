import 'package:provider_test/packages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<Todo>().tasks;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.push("/edit/$index");
            },
            child: ListTile(
              title: Card(
                child: SizedBox(
                  height: 50,
                  child: Center(child: Text(tasks[index])),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/add");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
