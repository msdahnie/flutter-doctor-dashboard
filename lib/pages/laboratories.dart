// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
const List<String> list = <String>['Radiology', 'Blood Test', 'Feces',];
var _scaffoldKey = new GlobalKey<ScaffoldState>();
var lists = [
'Radiology',
'Blood Test',
'Feces'
];
String dropdownValue = list.first;

void main() => runApp(const Lab());

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text("Laboratories")),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add), onPressed: (){
        _showDialog(context);
      }, 
      ),
      
    );
  }


  void _showDialog(BuildContext context) {
    
    showDialog(
      
      context: context,
      
    builder: (BuildContext context){
      
      return Expanded(
        

        child: AlertDialog(
          
          title: Text("Laboratory Appointment"),
          content: SizedBox(
            height: 400,
            width: 700,
            
            child: Form(
            child: Column(
              

              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Firstname',
                    
                  ),
                ),
                 SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Lastname',
                    
                  ),
                ),
                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
          
                    labelText: 'Age',
                    
                  ),
                  
                ),
                SizedBox(height: 50),
                DropdownMenu<String>(
                  
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    (() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((
                    String value) {
                      return DropdownMenuEntry<String>(
                        value: value, label: value);
                    }).toList(),
                  ),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Cancel"),
                      ),
                      SizedBox(width: 16.0),
                      ElevatedButton(onPressed: (){

                      },
                       child: Text("Submit"),
                       ),
                    ],
                  ),

                  
          
              ],),
          ),),

          
          
        ),

      );


    }
    
    );
    
  }
    
  
}
