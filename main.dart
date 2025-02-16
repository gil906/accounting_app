import 'package:flutter/material.dart';

void main() {
  runApp(AccountingApp());
}

class AccountingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Accounting App')),
        body: AccountingForm(),
      ),
    );
  }
}

class AccountingForm extends StatefulWidget {
  @override
  _AccountingFormState createState() => _AccountingFormState();
}

class _AccountingFormState extends State<AccountingForm> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();
  final TextEditingController _controller7 = TextEditingController();
  final TextEditingController _controller8 = TextEditingController();

  double _calculateBox9() {
    return (_parseController(_controller1) +
        _parseController(_controller2) +
        _parseController(_controller3) +
        _parseController(_controller4));
  }

  double _calculateBox10() {
    return (_parseController(_controller8) + _calculateBox9());
  }

  double _calculateBox11() {
    return (_calculateBox10() + _parseController(_controller5));
  }

  double _calculateBox12() {
    return (_calculateBox11() +
        _parseController(_controller6) +
        _parseController(_controller7));
  }

  double _parseController(TextEditingController controller) {
    return double.tryParse(controller.text) ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTextField('Sofi Gil', _controller1),
          _buildTextField('Sofi Lau', _controller2),
          _buildTextField('Chase', _controller3),
          _buildTextField('Cash', _controller4),
          _buildTextField('Gil Stocks', _controller5),
          _buildTextField('Gil 401K', _controller6),
          _buildTextField('Lau 401K', _controller7),
          _buildTextField('Savings Colombia', _controller8),
          _buildResultBox('In hand Cash USA', _calculateBox9()),
          _buildResultBox('In hand Cash USA + Colombia', _calculateBox10()),
          _buildResultBox('Cash + Stocks', _calculateBox11()),
          _buildResultBox('Net Worth (Cash + Stocks + 401K)', _calculateBox12(),
              isBold: true),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildResultBox(String label, double value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isBold ? 18.0 : 16.0,
            ),
          ),
          Text(
            value.toStringAsFixed(2),
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isBold ? 18.0 : 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
