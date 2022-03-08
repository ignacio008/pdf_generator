import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:z07_pdf_generator/imprimir.dart';
import 'package:z07_pdf_generator/save.dart';

class home1 extends StatefulWidget {
  home1({Key key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  String hola="";
 var image;

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar:AppBar(
        title: const Text("Generador de PDF")
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            // ignore: deprecated_member_use

            
            FlatButton(
              onPressed: () async{
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Imprimit()));
 
    

                },
             padding: const EdgeInsets.only(left:20,top:17, right:20, bottom:17),
              child: const Text("Generar PDF"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color:Colors.blue, width:2.0),
              ),
              ),  


                SizedBox(height:30),

              FlatButton(
              onPressed: () async{
                final pdfFile= await SaveFile.generatePdf();
              
                },
             padding: const EdgeInsets.only(left:20,top:17, right:20, bottom:17),
              child: const Text("Generar PDF2"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color:Colors.blue, width:2.0),
              ),
              ),  
    
          ],
        ),
      ),
    );
  }
  

}