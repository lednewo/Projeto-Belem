import 'package:cop30_bel/src/repository/lixeira_batistac_repo.dart';
import 'package:cop30_bel/src/util/colors/app_colors.dart';
import 'package:cop30_bel/src/util/widgets/card_widget_home.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BatistaCamposView extends StatefulWidget {
  const BatistaCamposView({super.key});

  @override
  State<BatistaCamposView> createState() => _BatistaCamposViewState();
}

class _BatistaCamposViewState extends State<BatistaCamposView> {
  final trashBatistaCampos = LixeiraBatistacRepo.listLixeiraBatistaCampos;

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
            'Batista Campos',
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
            itemCount: trashBatistaCampos.length,
            itemBuilder: (context, index) {
              return CardWidgetHome(
                uri: trashBatistaCampos[index].loc,
                bairro: trashBatistaCampos[index].bairro,
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
