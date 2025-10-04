import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookView extends StatelessWidget {
  final String pathPDF ;

  const BookView({super.key, required this.pathPDF});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body:SafeArea(child: SfPdfViewer.asset(pathPDF))
    );
  }
}
