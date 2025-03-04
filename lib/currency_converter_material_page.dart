

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
 const CurrencyConverterMaterialPage({super.key});
 
 
 @override
 Widget build(BuildContext context){
  double result=0;
  final TextEditingController textEditingController=TextEditingController();

   const border= OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter,
              ),
              borderRadius: BorderRadius.all(Radius.circular(60)),
             );
  return Scaffold(
      backgroundColor:const Color.fromARGB(255, 153, 148, 148) ,
      appBar: AppBar(
      backgroundColor:const Color.fromARGB(255, 153, 148, 148) , 
      elevation: 0, 
      title: const Text(
        'Currency Converter',
        style: TextStyle(
          color: Colors.black,
        ),  
      
      ),
      centerTitle: true,
      ),
      body:Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

           Text(result.toString(),
          style: const TextStyle(
            fontSize: 55 ,        // Font size
            fontWeight: FontWeight.bold,  // Font weight (e.g., bold)
            color: Color.fromARGB(255,255,255,255),  // Text color
            fontStyle: FontStyle.italic, // Italicize the text
            letterSpacing: 2.0,  // Space between letters
            height: 1.5,         // Line height
          ) ,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
              color: Color.fromARGB(255, 10, 10, 10),
            ),
              decoration: const InputDecoration(
                hintText:  'Please enter the Amount in LKR',
                hintStyle: TextStyle(
                  color: Colors.black,
              ),   
                prefixIcon: Icon(Icons.monetization_on),  
                prefixIconColor: Colors.black,
                filled: true,
                fillColor:Colors.white, 
                focusedBorder:border,
                enabledBorder: border,
               ),
                keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
               ),         
             ),
          ),              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {               
                 result=double.parse(textEditingController.text)*300;
                 build(context);
              },
              style:  ButtonStyle( 
                elevation: const WidgetStatePropertyAll(15),
                backgroundColor: const WidgetStatePropertyAll(Colors.black),
                foregroundColor: const WidgetStatePropertyAll(Colors.white),
                shape:WidgetStatePropertyAll(BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
                
              ),
               child: const Text('Convert'),
               ),
            ),
        ],
       ),
         
      )
  );
 }
}