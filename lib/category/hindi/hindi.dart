import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Hindi extends StatefulWidget {
  const Hindi({super.key});

  @override
  State<Hindi> createState() => _HindiState();
}

class _HindiState extends State<Hindi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("pdf"),

        ),
        body:SafeArea(child: SfPdfViewer.asset("asset/hindi_grm.pdf"))
    );
  }
}
