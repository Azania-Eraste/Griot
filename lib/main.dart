import 'package:flutter/material.dart';
import 'package:griot/Screen/BaseScreen.dart';
import 'package:griot/Screen/splash_screen.dart';

import 'Models/Conte.dart';
import 'Models/Lieu.dart';
import 'Screen/DetailScreen.dart';
import 'Screen/FeedScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<Conte> contes = [];
  final List<Lieu> lieux = [];

  @override
  void initState() {
    super.initState();

    contes.addAll( [
      Conte(
        titre: "Le Prince et la Sorcière",
        sousTitre: "Un pacte dangereux",
        resume: "Un prince téméraire conclut un accord avec une sorcière pour sauver son royaume.",
        histoire: "Il était une fois un prince courageux qui, pour protéger son royaume, fit un pacte avec une sorcière...",
        imageUrl: "assets/images/prince_sorciere.jpg",
      ),
      Conte(
        titre: "Le Miroir Magique",
        sousTitre: "Les reflets du destin",
        resume: "Un miroir révèle les vérités cachées du cœur de celui qui ose y jeter un regard.",
        histoire: "Dans un royaume lointain, un miroir magique montrait non pas le reflet des visages, mais celui des âmes...",
        imageUrl: "assets/images/miroir_magique.jpg",
      ),
      Conte(
        titre: "La Forêt Enchantée",
        sousTitre: "Un passage secret",
        resume: "Un enfant perdu découvre un passage menant à un monde merveilleux.",
        histoire: "Par une nuit brumeuse, un enfant curieux s'aventura dans une forêt qui ne figurait sur aucune carte...",
        imageUrl: "assets/images/foret_enchantee.jpg",
      ),
      Conte(
        titre: "Le Chaudron d'Or",
        sousTitre: "La richesse maudite",
        resume: "Un pauvre fermier trouve un chaudron rempli d’or, mais une terrible malédiction l’accompagne.",
        histoire: "Un jour, un fermier déterra un chaudron rempli d’or, mais chaque pièce enlevée le vieillissait...",
        imageUrl: "assets/images/chaudron_or.jpg",
      ),
      Conte(
        titre: "Le Chat Parleur",
        sousTitre: "Un secret bien gardé",
        resume: "Un chat doté de la parole aide son maître à conquérir le cœur d’une princesse.",
        histoire: "Un jeune homme solitaire découvrit un chat capable de parler, et ensemble, ils orchestrèrent un plan audacieux...",
        imageUrl: "assets/images/chat_parleur.jpg",
      ),
      Conte(
        titre: "Les Bottes Magiques",
        sousTitre: "Un voyage inattendu",
        resume: "Des bottes ensorcelées permettent de voyager instantanément n'importe où.",
        histoire: "Un cordonnier fabriqua une paire de bottes qui pouvaient transporter leur porteur en un clin d'œil...",
        imageUrl: "assets/images/bottes_magiques.jpg",
      ),
      Conte(
        titre: "Le Roi sans Ombre",
        sousTitre: "Un étrange phénomène",
        resume: "Un roi réalise un jour qu'il a perdu son ombre et que son royaume est en danger.",
        histoire: "Dans un palais somptueux, un roi remarqua qu'il n'avait plus d’ombre, et avec elle, son pouvoir disparaissait...",
        imageUrl: "assets/images/roi_sans_ombre.jpg",
      ),
      Conte(
        titre: "Le Dragon Endormi",
        sousTitre: "Un réveil dangereux",
        resume: "Un dragon millénaire dort sous une montagne, mais un enfant imprudent le réveille.",
        histoire: "Depuis des siècles, un dragon sommeillait sous une montagne, jusqu’à ce qu’un enfant curieux le réveille accidentellement...",
        imageUrl: "assets/images/dragon_endormi.jpg",
      ),
      Conte(
        titre: "La Lanterne du Temps",
        sousTitre: "Une lumière mystérieuse",
        resume: "Une lanterne magique permet de voyager dans le passé, mais à quel prix ?",
        histoire: "Un veilleur de nuit trouva une lanterne capable de le transporter dans le passé, mais chaque voyage lui coûtait un souvenir précieux...",
        imageUrl: "assets/images/lanterne_temps.jpg",
      ),
      Conte(
        titre: "La Clé d’Argent",
        sousTitre: "Un portail vers un autre monde",
        resume: "Une clé argentée ouvre la porte d’un royaume oublié depuis des siècles.",
        histoire: "Une jeune fille trouva une clé d'argent sous un vieux chêne et découvrit un passage vers un monde caché...",
        imageUrl: "assets/images/cle_argent.jpg",
      ),
    ]);


    // Exemple de données pour les lieux
    lieux.addAll([
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),    Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Dev Flutter",
        description: "Flutter est génial pour créer des interfaces modernes !",
        imageUrl: "assets/images/Visily.jpg",
      ),
    ]);

  }



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      routes: {
        '/home': (context) => FeedScreen(lieux: lieux),
        '/detail': (context) => DetailScreen(contes: contes),
        '/base': (context) => Basescreen(),
      },
      title: 'Griot App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
