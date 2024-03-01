// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:graduat/lab_views/home_lab_view.dart';
// import 'package:graduat/widgets/custom_form.dart';
// import 'package:image_picker/image_picker.dart';

// class SendTest extends StatefulWidget {
//   const SendTest({super.key});

//   static const String routeName = 'add';

//   @override
//   State<SendTest> createState() => _SendTestState();
// }

// class _SendTestState extends State<SendTest> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         iconTheme: IconThemeData.fallback(),
//       ),
//       body: Column(
//         children: [
//           _file == null ? Text("Image not found") : Image.file(_file!),
//           Text(
//             'Send Test',
//             style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//           ),
//           CustomFormFeild("Patient Name"),
//           CustomFormFeild("Doctro Name"),
//           CustomFormFeild("Date"),
//           CustomFormFeild("File"),
//           SizedBox(
//             height: 15,
//           ),
//           // const TextButton(
//           //     onPressed: null,
//           //     child: Text(
//           //       ' or file ',
//           // style: TextStyle(
//           //   color: Color.fromARGB(
//           //       255, 6, 61, 106), // Set text color to green
//           //   fontSize: 30.0,
//           // ),
//           //     )),
//           TextButton(
//               onPressed: () => UploadImage(),
//               child: Text(
//                 "upload image ",
//                 style: TextStyle(
//                   color: Color.fromARGB(
//                       255, 6, 61, 106), // Set text color to green
//                   fontSize: 30.0,
//                 ),
//               )),
//           const SizedBox(
//             height: 15,
//           ),
//           SizedBox(
//             width: 200,
//             height: 50,
//             child: TextButton(
//               style: ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll<Color>(
//                 Colors.green,
//               )),
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const LabHomeView();
//                 }));
//               },
//               child: Text(" Send", style: TextStyle(fontSize: 22)),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   File? _file;

//   Future UploadImage() async {
//     final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
//     setState(() {
//       _file = File(myfile!.path);
//     });
//   }
// }
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduat/lab_views/home_lab_view.dart';
import 'package:graduat/widgets/custom_form.dart';
import 'package:image_picker/image_picker.dart';

class SendTest extends StatefulWidget {
  const SendTest({Key? key});

  static const String routeName = 'add';

  @override
  State<SendTest> createState() => _SendTestState();
}

class _SendTestState extends State<SendTest> {
  File? _file;
  TextEditingController _filePathController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          // _file == null
          // ? Text("Image not found")
          // : Image.file(_file!),
          CustomFormFeild("Patient Name"),
          CustomFormFeild("Doctor Name"),
          CustomFormFeild("Date"),
          CustomFormFeild("File", controller: _filePathController,
          keyboard: TextInputType.text),
          SizedBox(height: 15),
          TextButton(
            onPressed: () => uploadImage(),
            child: Text(
              'Upload Image',
              style: TextStyle(
                color: Color.fromARGB(255, 6, 61, 106),
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.green,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LabHomeView();
                }));
              },
              child: Text("Send", style: TextStyle(fontSize: 22)),
            ),
          )
        ],
      ),
    );
  }

  Future uploadImage() async {
    try {
      final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (myfile != null) {
        setState(() {
          _file = File(myfile.path);
          _filePathController.text = myfile.path; // Update the text field
        });
        // Provide feedback to the user, for example, show a Snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Image selected successfully!'),
          ),
        );
      } else {
        // Handle case where the user canceled image selection
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Image selection canceled.'),
          ),
        );
      }
    } catch (e) {
      // Handle errors that may occur during the image selection process
      print('Error selecting image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error selecting image. Please try again.'),
        ),
      );
    }
  }
}
