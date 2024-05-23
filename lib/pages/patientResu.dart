import 'package:flutter/material.dart';
class Patientresults extends StatelessWidget {
  const Patientresults({super.key});

  static const List<String> results = [
    "Result 1",
    "Result 2",
    "Result 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Patient's Results")),
      body: ListView.builder(itemCount: results.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(results[index]),
          onTap: () => _showResultsDialog(context, results[index]),
        );

      }
      ),
    );
  }

  void _showResultsDialog(BuildContext context, String result){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Results Details: $result"),
        content: Text("View or download the detailed report."),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text("Cancel"),
          ),
          ElevatedButton(onPressed: () => _pickFile(context),
           child: Text("Submit File"),
           ),
        ],
      ),
      );
  }

  void _pickFile(BuildContext context) async{
    print('File selected');
  }

}