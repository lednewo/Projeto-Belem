import 'package:cop30_bel/src/repository/lixeira_jurunas_repo.dart';
import 'package:cop30_bel/src/util/colors/app_colors.dart';
import 'package:cop30_bel/src/util/widgets/card_widget_home.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class JurunasView extends StatefulWidget {
  const JurunasView({super.key});

  @override
  State<JurunasView> createState() => _JurunasViewState();
}

class _JurunasViewState extends State<JurunasView> {
  final trashJurunas = LixeiraJurunasRepo.listLixeiraJurunas;

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
            'Jurunas',
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
            itemCount: trashJurunas.length,
            itemBuilder: (context, index) {
              return CardWidgetHome(
                uri: trashJurunas[index].loc,
                bairro: trashJurunas[index].bairro,
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
