import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  final nombre= TextEditingController();
  final calle= TextEditingController();
  final numeroCasa= TextEditingController();
  final colonia= TextEditingController();
  final estado= TextEditingController();
  final cp= TextEditingController();
  final ciudad= TextEditingController();
  final numTel= TextEditingController();

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
       resizeToAvoidBottomInset : false,
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

            Container(
        width:MediaQuery.of(context).size.width*0.9,
        height:MediaQuery.of(context).size.height*0.89,
       
            child:
            SingleChildScrollView(
              child: Column(
                children:[
                
                      TextFormField(
                           controller:nombre,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.supervised_user_circle,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Nombre"),
                                          onChanged:(value){
                                          },
                                       ),
            
             SizedBox(height:10),


             
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                    width:MediaQuery.of(context).size.width*0.42,
        height:MediaQuery.of(context).size.height*0.08,
       
                   child: TextFormField(
                                 controller:calle,
                                              decoration: const InputDecoration(
                                                prefixIcon: Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: Icon(
                                                Icons.airline_seat_legroom_reduced_sharp,
                                                color: Colors.grey,
                                              ), // icon is 48px widget.
                                            ),
                                                labelText: "Calle"),
                                                onChanged:(value){
                                                },
                                             ),
                 ),
                  SizedBox(width:MediaQuery.of(context).size.width*0.05),
                  Container(
                    width:MediaQuery.of(context).size.width*0.42,
        height:MediaQuery.of(context).size.height*0.08,
      
                   child:  TextFormField(
                           controller:numeroCasa,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.house,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Numero interior"),
                                          onChanged:(value){
                                          },
                                       ),
                 ),
               ],
             ),
            
            
             
            




            
             SizedBox(height:10),TextFormField(
                           controller:colonia,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.house,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Colonia"),
                                          onChanged:(value){
                                          },
                                       ),
            
             SizedBox(height:10),TextFormField(
                           controller:estado,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.compare_rounded,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Estado"),
                                          onChanged:(value){
                                          },
                                       ),

                                       SizedBox(height:10),TextFormField(
                           controller:ciudad,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.maps_home_work_rounded,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Ciudad"),
                                          onChanged:(value){
                                          },
                                       ),
            
             SizedBox(height:10),TextFormField(
                maxLength: 5,
                                  keyboardType: TextInputType.number,
                           controller:cp,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.chrome_reader_mode_sharp,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Codigo Postal"),
                                          onChanged:(value){
                                          },
                                       ),
            
             SizedBox(height:10),TextFormField(
                                  maxLength: 10,
                                  keyboardType: TextInputType.number,
                           controller:numTel,
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Icon(
                                          Icons.contact_phone_rounded,
                                          color: Colors.grey,
                                        ), // icon is 48px widget.
                                      ),
                                          labelText: "Telefono"),
                                          onChanged:(value){
                                          },
                                       ),
            
             SizedBox(height:20),
            
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () async{

                      generatorPdfPreview();
                
             
                      },
                   padding: const EdgeInsets.only(left:20,top:17, right:20, bottom:17),
                    child: const Text("Generar PDF"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color:Colors.blue, width:2.0),
                    ),
                    ),


                    SizedBox(width:30),
                      FlatButton(
                onPressed: () async{


                  generatorPdfDoc();
                  
                
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
            
            
                  
            
               
                ],
              ),
            )
           ),
    
          ],
        ),
      ),
    );
  }

  void generatorPdfPreview() {
    FocusScope.of(context).requestFocus(FocusNode());
    String nombrePdf = nombre.text.trim();
    String callePdf = calle.text.trim();
    String numeroCasaPdf = numeroCasa.text.trim();
    String coloniaPdf = colonia.text.trim();
    String estadoPdf = estado.text.trim();
    String cpPdf = cp.text.trim();
    String ciudadPdf = ciudad.text.trim();
    String numTelPdf = numTel.text.trim();


    bool CpValid = RegExp(r'^\d{5}$').hasMatch(cpPdf);
    String msnToastCp="El codigo postal solo puede contener numero y debe tenr 5 digitos";

    bool TelefonoValid = RegExp(r'^\d{10}$').hasMatch(numTelPdf);
    String msnToastTelefono="El telefono solo puede contener numeros y debe tener 10 dígitos.";

    String msnNombre="No puede estar vacio el nombre";
    String msnCalle="No puede estar vacio la calle";
    String msnColonia="No puede estar vacio la coliona";
    String msnEstado="Por favor escriba su estado";
    String msnCiudad="Por favor escriba su ciudad";

   if(nombrePdf.isEmpty){
      showToast(msnNombre);
      return;
    }
     if(callePdf.isEmpty){
      showToast(msnCalle);
      return;
    }
    if(coloniaPdf.isEmpty){
      showToast(msnColonia);
      return;
    }
    if(estadoPdf.isEmpty){
      showToast(msnEstado);
      return;
    }
     if(ciudadPdf.isEmpty){
      showToast(msnCiudad);
      return;
    }

    if(numTelPdf.isEmpty || TelefonoValid==false){
      showToast(msnToastTelefono);
      return;
    }
    if(cpPdf.isEmpty || CpValid==false){
      showToast(msnToastCp);
      return;
    }

     Navigator.push(context, MaterialPageRoute(builder: (context)=>Imprimit(
     nombrePdf,
     callePdf,
     numeroCasaPdf,
     coloniaPdf,
     estadoPdf,
     cpPdf,
     ciudadPdf,
     numTelPdf
     )));
  }

   void generatorPdfDoc()async {
     FocusScope.of(context).requestFocus(FocusNode());
    String nombrePdf = nombre.text.trim();
    String callePdf = calle.text.trim();
    String numeroCasaPdf = numeroCasa.text.trim();
    String coloniaPdf = colonia.text.trim();
    String estadoPdf = estado.text.trim();
    String cpPdf = cp.text.trim();
    String ciudadPdf = ciudad.text.trim();
    String numTelPdf = numTel.text.trim();


    bool CpValid = RegExp(r'^\d{5}$').hasMatch(cpPdf);
    String msnToastCp="El codigo postal solo puede contener numero y debe tenr 5 digitos";

    bool TelefonoValid = RegExp(r'^\d{10}$').hasMatch(numTelPdf);
    String msnToastTelefono="El telefono solo puede contener numeros y debe tener 10 dígitos.";

    String msnNombre="No puede estar vacio el nombre";
    String msnCalle="No puede estar vacio la calle";
    String msnColonia="No puede estar vacio la coliona";
    String msnEstado="Por favor escriba su estado";
    String msnCiudad="Por favor escriba su ciudad";

   if(nombrePdf.isEmpty){
      showToast(msnNombre);
      return;
    }
     if(callePdf.isEmpty){
      showToast(msnCalle);
      return;
    }
    if(coloniaPdf.isEmpty){
      showToast(msnColonia);
      return;
    }
    if(estadoPdf.isEmpty){
      showToast(msnEstado);
      return;
    }
     if(ciudadPdf.isEmpty){
      showToast(msnCiudad);
      return;
    }

    if(numTelPdf.isEmpty || TelefonoValid==false){
      showToast(msnToastTelefono);
      return;
    }
    if(cpPdf.isEmpty || CpValid==false){
      showToast(msnToastCp);
      return;
    }

    final pdfFile= await SaveFile.generatePdf(
       nombrePdf,
     callePdf,
     numeroCasaPdf,
     coloniaPdf,
     estadoPdf,
     cpPdf,
     ciudadPdf,
     numTelPdf
    );

  }

  void showToast(mensaje) {
    Fluttertoast.showToast(
        msg: mensaje,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red[700],
        textColor: Colors.white,
        fontSize: 14.0,
    );
  }

 
  

}