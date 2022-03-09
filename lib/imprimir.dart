import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:z07_pdf_generator/var_global.dart';
import 'package:z07_pdf_generator/widget_pdf.dart';

class Imprimit extends StatefulWidget {
  String nombrePdf ;
    String callePdf ;
    String numeroCasaPdf ;
    String coloniaPdf ;
    String estadoPdf ;
    String cpPdf ;
    String ciudadPdf ;
    String numTelPdf ;

  Imprimit(this.nombrePdf,this.callePdf,this.numeroCasaPdf,this.coloniaPdf,this.estadoPdf,this.cpPdf,this.ciudadPdf,this.numTelPdf);

  @override
  State<Imprimit> createState() => _ImprimitState();
}

class _ImprimitState extends State<Imprimit> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Preview")),
        body: PdfPreview(
          build: (format) => _generatePdf(),
        ),
    
    );
  }

  Future<Uint8List> _generatePdf() async {
    final pdf = pw.Document();
    
 pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(0),
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return 
         
           PdfWidget.crear(widget.nombrePdf,
           widget.callePdf,
           widget.numeroCasaPdf,
           widget.coloniaPdf,
           widget.estadoPdf,
           widget.cpPdf,
           widget.ciudadPdf,
           widget.numTelPdf);
          
        },
      ),
    );

    return pdf.save();
  }
}