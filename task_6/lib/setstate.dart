/*import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Filter Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fast Filter Bar Demo'),
        ),
        body: Column(
          children: [
            FastFilterBar(
              filters: [
                'تحت المراجعة',
                'تمت',
                'المكتملة',
                'الملغية',
                'قيد التنفيذ',
                  '............',
                  '............',
              ],
            ),
            Expanded(
              child: Center(
                child: Text('Main Content Here'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FastFilterBar extends StatefulWidget {
  final List<String> filters;

  FastFilterBar({required this.filters});

  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.filters.length, (index) {
          bool isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isSelected ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.filters[index],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isHidden = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isHidden,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(
            _isHidden ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}*/