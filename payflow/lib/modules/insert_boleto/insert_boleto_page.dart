import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(color: AppColors.input,),
      ),
      body: Column(
        children: [
          Text("Insert Boleto Page")
        ],
      ),
    );
  }
}