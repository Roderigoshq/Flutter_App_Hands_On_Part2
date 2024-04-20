import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holds_on_part2/pages/segundapagina.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(60.0), // Definir a altura da AppBar
        child: AppBar(
          title: Text(
            "Home Page",
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Center(
                child: Text(
                  "Listagem e navegação",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Uma Aplicação para gerência de estado e navegação com Flutter",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SegundaPagina()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Ir para List Page",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
