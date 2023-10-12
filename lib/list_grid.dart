import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Mango', 'Bananas', 'Apple'];
  List<String> names = ['Karan', 'Akshit', 'Gaurav', 'Assif'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: (),
                leading: Icon(Icons.person_4),
                title: Text(fruits[index]),
                subtitle: Text(names[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListGrid(),
  ));
}


// import 'package:flutter/material.dart';

// class ListGrid extends StatefulWidget {
//   const ListGrid({super.key});

//   @override
//   State<ListGrid> createState() => _ListGridState();
// }

// class _ListGridState extends State<ListGrid> {
//   List<String> fruits = ['Orange', 'Mango', 'Bananas', 'Apple'];
//   Map fruits_person = {
//     'fruits': ['Orange', 'Mango', 'Bananas', 'Apple'],
//     'names': ['Karan', 'Akshit', 'Gaurav', 'Assif']
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List and Grid'),
//         backgroundColor: Colors.red,
//         elevation: 8,
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemCount: fruits.length,
//           itemBuilder: (context, index) {
//             return Card(
//               child: ListTile(
//                 title: Text(fruits_person['fruits'][index]),
//                 subtitle: Text(fruits_person['names'][index]),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
