import 'package:provider_test/packages.dart';

class Todo with ChangeNotifier {
  final List<String> tasks = ["aaa", "bbb"];

  void add(String text){
    tasks.add(text);
    notifyListeners();
  }

  void edit(int index, String newtext){
    tasks[index] = newtext;
    notifyListeners();
  }

  void remove(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}
