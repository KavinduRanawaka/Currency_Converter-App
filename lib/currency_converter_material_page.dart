import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
 const CurrencyConverterMaterialPage({super.key});

 @override
 Widget build(BuildContext context){
  return const Scaffold(
      backgroundColor:Color.fromARGB(255, 153, 148, 148) ,
      body:Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("0",style:TextStyle(
            fontSize: 55 ,        // Font size
            fontWeight: FontWeight.bold,  // Font weight (e.g., bold)
            color: Color.fromARGB(255,255,255,255),  // Text color
            fontStyle: FontStyle.italic, // Italicize the text
            letterSpacing: 2.0,  // Space between letters
            height: 1.5,         // Line height
          ) ,),

          TextField(style: TextStyle(
            color: Color.fromARGB(255, 10, 10, 10),
          ),
            decoration: InputDecoration(
              hintText:  'Please enter the Amount in LKR',
              hintStyle: TextStyle(
                color: Colors.black,
            ),   
              prefixIcon: Icon(Icons.monetization_on),  
              prefixIconColor: Colors.black,
              filled: true,
              fillColor:Colors.white, 
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),),           
           ),              
          ),
        ],
       ),
         
      )
  );
 }
}