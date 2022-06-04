import 'package:flutter/material.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  String dropdownValue1 = 'Select Section';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue1,
      isExpanded: true,
      dropdownColor: Color.fromARGB(255, 27, 21, 49),
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue1) {
        setState(() {
          dropdownValue1 = newValue1!;
        });
      },
      items: <String>[
        'Select Section',
        'Front Section',
        'Back Section',
        'Assembly Section'
      ].map<DropdownMenuItem<String>>((String value1) {
        return DropdownMenuItem<String>(
          value: value1,
          child: Text(value1),
        );
      }).toList(),
    );
  }
}

//____________________2nd dropdown List__________________________

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  String dropdownValue2 = 'Select Operation';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue2,
      isExpanded: true,
      dropdownColor: Color.fromARGB(255, 12, 12, 14),
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue2) {
        setState(() {
          dropdownValue2 = newValue2!;
        });
      },
      items: <String>[
        'Select Operation',
        'Fly Overlock',
        'Front Panel Overlock',
        'Coin Pkt Hem',
        'Coin Pkt Attach',
        'Coin Pkt Guider',
        'Facing',
        'Lining Top'
      ].map<DropdownMenuItem<String>>((String value2) {
        return DropdownMenuItem<String>(
          value: value2,
          child: Text(value2),
        );
      }).toList(),
    );
  }
}

// //_______________________3rd DropDown List_______________________

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = [
    'Select Line',
    'Line no. 1',
    'Line no. 2',
    'Line no. 3',
    'Line no. 4',
    'Line no. 5',
    'Line no. 6',
    'Line no. 7',
    'Line no. 8',
    'Line no. 9',
    'Line no. 10',
    'Line no. 11',
    'Line no. 12'
  ];
  var _currentItemSelected = 'Select Line';
  // String dropDownStringItem = "Hellow";
  @override
  Widget build(BuildContext context) {
    // debugPrint("Favorite City widget is created");

    return
        //
        DropdownButton<String>(
      dropdownColor: Color.fromARGB(255, 12, 12, 14),
      isExpanded: true,
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      items: _currencies.map((String dropDownStringItem) {
        return DropdownMenuItem<String>(
          value: dropDownStringItem,
          child: Text(dropDownStringItem),
        );
      }).toList(),
      onChanged: (String? newValueSelected) {
        // Your code to execute, when a menu item is selected from drop down
        _onDropDownItemSelected(newValueSelected!);
      },
      value: _currentItemSelected,
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}

//___________________________$th________________________

class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  //String dropdownValue4 = "Hello";
  var _currenciesF = [
    'Operator',
    'Line no. 1',
    'Line no. 2',
    'Line no. 3',
    'Line no. 4',
    'Line no. 5',
    'Line no. 6',
    'Line no. 7',
    'Line no. 8',
    'Line no. 9',
    'Line no. 10',
    'Line no. 11',
    'Line no. 12'
  ];
  var _currentItemSelectedF = 'Operator';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Color.fromARGB(255, 25, 25, 54),
      isExpanded: true,
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      items: _currenciesF.map((String dropDownStringItemF) {
        return DropdownMenuItem<String>(
          value: dropDownStringItemF,
          child: Text(dropDownStringItemF),
        );
      }).toList(),
      onChanged: (String? newValueSelectedF) {
        // Your code to execute, when a menu item is selected from drop down
        _onDropDownItemSelected(newValueSelectedF!);
      },
      value: _currentItemSelectedF,
    );
  }

  void _onDropDownItemSelected(String newValueSelectedF) {
    setState(() {
      this._currentItemSelectedF = newValueSelectedF;
    });
  }
}
