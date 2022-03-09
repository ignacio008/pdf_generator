import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:z07_pdf_generator/var_global.dart';

class PdfWidget{


  static   crear(
    String nombrePdf,
    String callePdf,
    String numeroCasaPdf,
    String coloniaPdf,
    String estadoPdf,
    String cpPdf,
    String ciudadPdf,
    String numTelPdf,
  ){
     
          return pw.Container(
            padding: const pw.EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                  padding: const pw.EdgeInsets.only(left: 20),
                  child: pw.Text("Ship@lick",
                      style: const pw.TextStyle(
                        color: PdfColor(0, 0, 0, 0.1),
                        fontSize: 40,
                      )),
                ),
                pw.Row(
                  children: [
                    pw.Container(
                        decoration: const pw.BoxDecoration(
                            border: pw.Border(
                          top: pw.BorderSide(
                            width: 1,
                          ),
                        )),
                        width: 555,
                        height: 90,
                        child: pw.Row(children: [
                          pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColor(0, 0, 0, 0.9),
                                border: pw.Border(
                                  right: pw.BorderSide(
                                    width: 2,
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                  ),
                                  top: pw.BorderSide(
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                    width: 2,
                                  ),
                                  left: pw.BorderSide(
                                    width: 2,
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                  ),
                                )),
                            padding:
                                const pw.EdgeInsets.only(left: 27, top: 56),
                            width: 40,
                            height: 90,
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              children: [
                                pw.Center(
                                  child: pw.Transform(
                                    child: pw.Text("REMITENTE ",
                                        style: const pw.TextStyle(
                                          color: PdfColor(1, 1, 1, 0.9),
                                        )),
                                    transform: new Matrix4.identity()
                                      ..rotateZ(90 * 3.1415927 / 180),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                              padding:
                                  const pw.EdgeInsets.only(left: 6, top: 10),
                              child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(VriableGlobal.linea1,
                                        style: const pw.TextStyle(
                                          fontSize: 15,
                                        )),
                                    pw.Text(VriableGlobal.linea2Dir
                                        ,
                                        style: const pw.TextStyle(
                                          fontSize: 15,
                                        )),
                                    pw.Text(VriableGlobal.linea3Dir
                                        ,
                                        style: const pw.TextStyle(
                                          fontSize: 15,
                                        )),
                                    pw.Text(VriableGlobal.linea4Dir,
                                        style: const pw.TextStyle(
                                          fontSize: 15,
                                        )),
                                  ])),
                          pw.SizedBox(width: 20),
                          pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.center,
                            children: [
                              pw.BarcodeWidget(
                                  data: VriableGlobal.qr,
                                  barcode: pw.Barcode.qrCode(),
                                  width: 100,
                                  height: 50),
                            ],
                          ),
                        ]))
                  ],
                ),
                pw.Row(
                  children: [
                    pw.Container(
                        decoration: const pw.BoxDecoration(
                            border: pw.Border(
                          bottom: pw.BorderSide(
                            width: 1,
                          ),
                          top: pw.BorderSide(
                            width: 1,
                          ),
                        )),
                        width: 555,
                        height: 130,
                        child: pw.Row(children: [
                          pw.Container(
                            decoration: const pw.BoxDecoration(
                                color: PdfColor(0, 0, 0, 0.9),
                                border: pw.Border(
                                  right: pw.BorderSide(
                                    width: 2,
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                  ),
                                  bottom: pw.BorderSide(
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                    width: 2,
                                  ),
                                  left: pw.BorderSide(
                                    width: 2,
                                    color: PdfColor(0.960, 0, 0, 0.9),
                                  ),
                                )),
                            padding:
                                const pw.EdgeInsets.only(left: 27, top: 90),
                            width: 40,
                            height: 130,
                            child: pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              children: [
                                pw.Center(
                                  child: pw.Transform(
                                    child: pw.Text("CONSIGNATARIO ",
                                        style: const pw.TextStyle(
                                          color: PdfColor(1, 1, 1, 0.9),
                                        )),
                                    transform: new Matrix4.identity()
                                      ..rotateZ(90 * 3.1415927 / 180),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          pw.Container(
                              padding:
                                  const pw.EdgeInsets.only(left: 6, top: 10),
                              child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(nombrePdf.toUpperCase(),
                                        style: const pw.TextStyle(
                                          fontSize: 18,
                                        )),
                                    pw.Text('${callePdf.toUpperCase()} ${numeroCasaPdf}'
                                        ,
                                        style: const pw.TextStyle(
                                          fontSize: 18,
                                        )),
                                    pw.Text(coloniaPdf.toUpperCase()
                                        ,
                                        style: const pw.TextStyle(
                                          fontSize: 18,
                                        )),
                                    pw.Text("${estadoPdf.toUpperCase()},, ${cpPdf},, ${ciudadPdf.toUpperCase()}, ${numTelPdf} "
                                       ,
                                        style: const pw.TextStyle(
                                          fontSize: 18,
                                        )),
                                  ])),
                          pw.SizedBox(width: 20),
                        ]))
                  ],
                ),
                pw.Container(
                    decoration: const pw.BoxDecoration(
                        border: pw.Border(
                            bottom: pw.BorderSide(
                      width: 1,
                    ))),
                    width: 555,
                    height: 60,
                    padding:
                        const pw.EdgeInsets.only(top: 6, left: 30, right: 60),
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(VriableGlobal.doc),
                            pw.Text(VriableGlobal.docRef),
                          ],
                        ),
                        pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(VriableGlobal.cont),
                            pw.Text("OBS:"),
                          ],
                        ),
                      ],
                    )),
                pw.Container(
                    width: 555,
                    height: 230,
                    padding: const pw.EdgeInsets.only(left: 30),
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 60),
                              pw.Text("ANFITRIONES",
                                  style: const pw.TextStyle(
                                    fontSize: 24,
                                  )),
                              pw.Text(VriableGlobal.num,
                                  style: const pw.TextStyle(
                                    fontSize: 24,
                                  )),
                            ]),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 5),
                            pw.Container(
                              width: 240,
                              height: 200,
                              padding: const pw.EdgeInsets.only(
                                left: 10,
                              ),
                              child: pw.Stack(
                                  alignment: pw.Alignment.centerLeft,
                                  children: [
                                    pw.Positioned(
                                      left: 1.0,
                                      top: 20,
                                      child: pw.Container(
                                        width: 100,
                                        height: 50,
                                        child: pw.Text("MXVALL",
                                            style: const pw.TextStyle(
                                              fontSize: 45,
                                            )),
                                      ),
                                    ),
                                    pw.Positioned(
                                      left: 10.0,
                                      top: 70,
                                      child: pw.Container(
                                        width: 100,
                                        height: 50,
                                        child: pw.Text("MEX",
                                            style: const pw.TextStyle(
                                              fontSize: 40,
                                            )),
                                      ),
                                    ),
                                    pw.Positioned(
                                      top: 160,
                                      child: pw.Container(
                                        width: 100,
                                        height: 50,
                                        child: pw.Text("8100",
                                            style: const pw.TextStyle(
                                              fontSize: 40,
                                            )),
                                      ),
                                    ),
                                    pw.Positioned(
                                      left: 221.0,
                                      bottom: 20,
                                      child: pw.Container(
                                        width: 170,
                                        height: 60,
                                        child: pw.Transform(
                                          child: pw.BarcodeWidget(
                                              data: VriableGlobal.barcodeNum,
                                              barcode: pw.Barcode.telepen(),
                                              width: 170,
                                              height: 60),
                                          transform: new Matrix4.identity()
                                            ..rotateZ(90 * 3.1415927 / 180),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    )),
                pw.Container(
                  width: 550,
                  height: 120,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                      pw.BarcodeWidget(
                          data: VriableGlobal.barcodeNum,
                          barcode: pw.Barcode.telepen(),
                          width: 470,
                          height: 120),
                    ],
                  ),
                  decoration: const pw.BoxDecoration(
                      // color: Colors.yellow[100],
                      border: pw.Border(
                          bottom: pw.BorderSide(
                    // color: Colors.green,
                    width: 5,
                  ))),
                ),
                pw.SizedBox(height: 2),
                pw.Container(
                  height: 50,
                  child: pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                        decoration: const pw.BoxDecoration(
                            border: pw.Border(
                          right: pw.BorderSide(
                            width: 2,
                            color: PdfColor(0.960, 0, 0, 0.9),
                          ),
                          bottom: pw.BorderSide(
                            color: PdfColor(0.960, 0, 0, 0.9),
                            width: 2,
                          ),
                          left: pw.BorderSide(
                            width: 2,
                            color: PdfColor(0.960, 0, 0, 0.9),
                          ),
                        )),
                        width: 50,
                        height: 50,
                        child: pw.Center(
                          child: pw.Text("26"),
                        ),
                      ),
                      pw.SizedBox(width: 330),
                      pw.Column(children: [
                        pw.Container(
                          decoration: const pw.BoxDecoration(
                              border: pw.Border(
                            right: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                            bottom: pw.BorderSide(
                              color: PdfColor(0.960, 0, 0, 0.9),
                              width: 2,
                            ),
                            left: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                          )),
                          width: 50,
                          height: 16,
                          child: pw.Center(
                            child: pw.Text("1/1"),
                          ),
                        ),
                        pw.Container(
                          decoration: const pw.BoxDecoration(
                              border: pw.Border(
                            right: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                            bottom: pw.BorderSide(
                              color: PdfColor(0.960, 0, 0, 0.9),
                              width: 2,
                            ),
                            left: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                          )),
                          width: 50,
                          height: 16,
                          child: pw.Center(
                            child: pw.Text("1.0 kg."),
                          ),
                        ),
                        pw.Container(
                          decoration: const pw.BoxDecoration(
                              border: pw.Border(
                            right: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                            bottom: pw.BorderSide(
                              color: PdfColor(0.960, 0, 0, 0.9),
                              width: 2,
                            ),
                            left: pw.BorderSide(
                              width: 2,
                              color: PdfColor(0.960, 0, 0, 0.9),
                            ),
                          )),
                          width: 50,
                          height: 16,
                          child: pw.Center(
                            child: pw.Text("1x1x1"),
                          ),
                        ),
                      ]),
                      pw.Container(
                        decoration: const pw.BoxDecoration(
                            border: pw.Border(
                          right: pw.BorderSide(
                            width: 2,
                            color: PdfColor(0.960, 0, 0, 0.9),
                          ),
                          bottom: pw.BorderSide(
                            color: PdfColor(0.960, 0, 0, 0.9),
                            width: 2,
                          ),
                          left: pw.BorderSide(
                            width: 2,
                            color: PdfColor(0.960, 0, 0, 0.9),
                          ),
                        )),
                        width: 50,
                        height: 48,
                        child: pw.Center(
                          child: pw.Text("26"),
                        ),
                      ),
                      pw.Container(
                        width: 100,
                        height: 48,
                        child: pw.Flexible(child: pw.FlutterLogo()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
