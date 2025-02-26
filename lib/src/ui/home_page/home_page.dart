import 'package:cop30_bel/src/ui/home_page/home_view_all.dart';
import 'package:cop30_bel/src/ui/view_batista_campos/batista_campos_view.dart';
import 'package:cop30_bel/src/ui/view_condor/condor_view.dart';
import 'package:cop30_bel/src/ui/view_jurunas/jurunas_view.dart';
import 'package:cop30_bel/src/util/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: AppColors().colorBg,
        appBar: AppBar(
          title: Row(
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
          bottom: TabBar(
            indicatorColor: AppColors().colorComponents,
            labelColor: AppColors().colorComponents,
            isScrollable: true,
            overlayColor: WidgetStatePropertyAll(
              AppColors().colorComponents.withAlpha(80),
            ),
            tabAlignment: TabAlignment.center,
            tabs: [
              Tab(
                text: 'Todos',
              ),
              Tab(
                text: 'Jurunas',
              ),
              Tab(
                text: 'Condor',
              ),
              Tab(
                text: 'Batista Campos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeViewAll(),
            JurunasView(),
            BatistaCamposView(),
            CondorView(),
          ],
        ),
      ),
    );
  }
}
