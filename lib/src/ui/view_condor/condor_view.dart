import 'package:cop30_bel/src/repository/lixeira_condor_repo.dart';
import 'package:cop30_bel/src/util/colors/app_colors.dart';
import 'package:cop30_bel/src/util/widgets/card_widget_home.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CondorView extends StatefulWidget {
  const CondorView({super.key});

  @override
  State<CondorView> createState() => _CondorViewState();
}

class _CondorViewState extends State<CondorView> {
  final trashCondor = LixeiraCondorRepo.listLixeiraCondor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Condor',
            style: GoogleFonts.arimo(
              color: AppColors().colorComponents,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: trashCondor.length,
            itemBuilder: (context, index) {
              return CardWidgetHome(
                uri: trashCondor[index].loc,
                bairro: trashCondor[index].bairro,
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
