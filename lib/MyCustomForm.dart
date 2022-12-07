import 'package:flutter/material.dart';
import 'package:test/SecondRoute.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Hrms';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  late String sOrgId, sNumber, sPass;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: (value) {
              sOrgId = value;
            },
            initialValue: "1666262032",
            decoration: const InputDecoration(
              labelText: "Org Id : ", //babel text
              hintText: "Enter your organisation id", //hint text
              prefixIcon: Icon(Icons.people), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.redAccent), //label style
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            onChanged: (value) {
              sNumber = value;
            },
            initialValue: "8814860107",
            decoration: const InputDecoration(
              labelText: "Phone Number", //babel text
              hintText: "Enter your phone number", //hint text
              prefixIcon: Icon(Icons.numbers), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.redAccent), //label style
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            onChanged: (value) {
              sPass = value;
            },
            initialValue: "8814860107",
            decoration: const InputDecoration(
              labelText: "Password", //babel text
              hintText: "Enter your password", //hint text
              prefixIcon: Icon(Icons.password), //prefix iocn
              hintStyle: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold), //hint text style
              labelStyle: TextStyle(
                  fontSize: 13, color: Colors.redAccent), //label style
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondRoute(
                                sOrgId: sOrgId,
                                sNumber: sNumber,
                                sPassword: sPass,
                              )),
                    );

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );
                  }
                },
                child: const Text('Submit'),
              ),
            )),
          ),
        ],
      ),
    );
  }
}

//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: const MyCustomForm(),
//       ),
//     );