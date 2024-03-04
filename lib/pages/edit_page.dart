import 'package:provider_test/packages.dart';

class EditPage extends StatefulWidget {
  final int index;

  const EditPage({super.key, required this.index});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController ctrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    ctrl.text = context.read<Todo>().tasks[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text("Edit Page"),
        actions: [
          IconButton(
              onPressed: () {
                context.read<Todo>().remove(widget.index);
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.delete_outline_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    controller: ctrl,
                    autofocus: true,
                    decoration: const InputDecoration(
                      labelText: "Edit",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  context.read<Todo>().edit(widget.index, ctrl.text);
                  GoRouter.of(context).pop();
                },
                child: const Text("Edit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
