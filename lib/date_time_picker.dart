import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(DateFormat.yMMMMEEEEd().format(selectedDate)),
              ElevatedButton(onPressed: (){
                showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100))
                    .then((value){
                      setState(() {
                        selectedDate = value!;
                      });
                });
              }, child: Text("Select Date"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if(selectedTime != null)
              Text(selectedTime!.format(context).toString())
              else
                Text("Select Time"),

              ElevatedButton(onPressed: (){
                showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now())
                    .then((value){
                      setState(() {
                        selectedTime = value;
                      });
                });
              }, child: Text("Select Time"))
            ],
          ),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
                context: context,
              builder: (BuildContext context) {
                   return Container(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Text("Add Details"),
                           TextField(
                             decoration: InputDecoration(
                               hintText: "Event Name",
                               border: OutlineInputBorder(),
                             ),
                           ),
                           TextField(
                             decoration: InputDecoration(
                                 hintText: "Description",
                               border: OutlineInputBorder(),
                             ),
                           ),
                           TextField(
                             decoration: InputDecoration(
                                 hintText: "Venue",
                               border: OutlineInputBorder(),
                             ),
                           ),
                           ElevatedButton(onPressed: (){
                             Navigator.pop(context);
                           }, child: Text("Create"))
                         ],
                       ),
                     ),
                   );
              }, );
          }, child: Text("Add Details")),
          ElevatedButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
                context: context,
              builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You!"),
                    content: Text("Event Create Successfully"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Confirm"))
                    ],
                  );
              },
                );
          }, child: Text("Confirm"))
        ],
      ),
    );
  }
}
