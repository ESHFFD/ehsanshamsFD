import 'package:flutter/material.dart';

class IllustrationPhone extends StatelessWidget {
  const IllustrationPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_File_bundle_re_6q1e%201.png?alt=media&token=297b0f81-a805-4a93-858c-32783fcacb50",
      fit: BoxFit.cover,
    );
  }
}
