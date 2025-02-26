import 'package:cop30_bel/src/repository/lixeira_batistac_repo.dart';
import 'package:cop30_bel/src/repository/lixeira_condor_repo.dart';
import 'package:cop30_bel/src/repository/lixeira_jurunas_repo.dart';
import 'package:cop30_bel/src/util/colors/app_colors.dart';
import 'package:cop30_bel/src/util/widgets/card_widget_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final trashJurunas = LixeiraJurunasRepo.listLixeiraJurunas;
  final trashBatistaCampos = LixeiraBatistacRepo.listLixeiraBatistaCampos;
  final trashCondor = LixeiraCondorRepo.listLixeiraCondor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().colorBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belém COP30',
                      style: GoogleFonts.arimo(
                        color: AppColors().colorComponents,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Localize as lixeiras no seu bairro:',
                  style: GoogleFonts.arimo(
                    color: AppColors().colorComponents,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Jurunas',
                  style: GoogleFonts.arimo(
                    color: AppColors().colorComponents,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
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
                Text(
                  'Batista Campos',
                  style: GoogleFonts.arimo(
                    color: AppColors().colorComponents,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
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
                Text(
                  'Condor',
                  style: GoogleFonts.arimo(
                    color: AppColors().colorComponents,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
