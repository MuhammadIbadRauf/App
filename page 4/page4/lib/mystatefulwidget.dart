import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  List<String> data = [];
  MyStatefulWidget({Key? key, required this.data}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      isExpanded: true,
      dropdownColor: Color.fromARGB(255, 27, 21, 49),
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: widget.data.map(buildMenuItem).toList(),
    );
  }
}
