import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({super.key});

  @override
  State<SearchDoctor> createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Search a Doctor',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 5, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Search doctor, catagories, topic...",
                        fillColor: Colors.white70,
                        // Icon(Icons.search,size: 10.0,),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    "Doctor's place",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 250,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("specialty"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("specialty"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient : Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("specialty"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("specialty"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Container(
//                 alignment: Alignment.topLeft,
//                 height: 60,
//                 width:150, //double.infinity,
//                 child:
//                   Expanded(
//                     child: Row(
//                       children: [
//                         TextField(
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Enter the patint',
//                             ),
//                           ),
//                           Icon(Icons.search,size: 10.0,),
//                       ],
//                     ),
//                   ),
              
//             ),