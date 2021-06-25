import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScanner extends StatefulWidget {
  const BarcodeScanner({Key? key}) : super(key: key);

  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  @override
  Widget build(BuildContext context) {
    // return BottomSheetWidget(
    //     primaryLabel: "primaryLabel",
    //     primaryOnPressed: () {},
    //     secondLabel: "secondLabel",
    //     secondOnPressed: () {},
    //     title: "title",
    //     subTitle: "subTitle");
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: AppTextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir código do boleto",
            primaryOnPressed: () {},
            secondLabel: "Adicionar da galeria",
            secondOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
