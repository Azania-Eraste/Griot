import '../Models/Conte.dart';
import '../Models/Lieu.dart';

class LieuController {
  static List<Lieu> lieux = [
    Lieu(
      nom: "Timbuktu",
      description: "Cité historique et centre de la culture islamique en Afrique de l'Ouest.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "Le Voyage du Savoir",
          sousTitre: "Le périple d'un érudit",
          resume: "Un jeune érudit voyage pour étudier et répandre le savoir.",
          histoire: "Dans la ville de Tombouctou, un jeune érudit décida de voyager à travers le désert pour chercher des connaissances. Il rencontra de nombreux sages et apprit des philosophies anciennes. À son retour, il fonda une école où il enseigna le savoir qu'il avait acquis. Ce conte rappelle l'importance de l'apprentissage et de la transmission du savoir.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Cité Engloutie",
          sousTitre: "Les mystères sous l'eau",
          resume: "Une cité perdue émerge des eaux pour révéler ses secrets.",
          histoire: "Il y a des siècles, une grande cité de Tombouctou disparut sous les eaux à cause d'un cataclysme. Des rumeurs parlaient de trésors et de secrets cachés. Un jeune pêcheur, curieux, plongea dans les profondeurs du fleuve et découvrit les ruines de la ville. Il en ressortit avec des artefacts anciens qui changèrent sa vie à jamais.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Légende du Dromadaire",
          sousTitre: "L'animal fidèle",
          resume: "L'histoire d'un dromadaire qui sauve son maître dans le désert.",
          histoire: "Dans le désert malien, un marchand se perdit avec son dromadaire. Au bord de la mort, le dromadaire guida son maître vers une oasis cachée. La légende raconte que l'animal était guidé par une sagesse mystique, et que sa fidélité fut récompensée par la prospérité du marchand.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),
    Lieu(
      nom: "Bamako",
      description: "Capitale dynamique du Mali, entre modernité et traditions.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "Le Serpent et l'Humanité",
          sousTitre: "Une quête de réconciliation",
          resume: "Un serpent cherche à comprendre la nature humaine.",
          histoire: "Un serpent magique vivait près de Bamako et observait les humains. Curieux de comprendre pourquoi ils se querellaient sans cesse, il se métamorphosa en homme. Il parcourut le monde, cherchant des réponses. Finalement, il comprit que l’amour et la tolérance étaient les clés de l'harmonie, et retourna sous sa forme de serpent pour enseigner cette sagesse.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Nuit des Etoiles",
          sousTitre: "L'étoile filante",
          resume: "Une légende explique pourquoi les étoiles filantes existent.",
          histoire: "Une nuit, une étoile filante traversa le ciel de Bamako. Les anciens disaient qu'une âme pure montait vers les cieux pour guider les âmes perdues. Depuis lors, chaque étoile filante est perçue comme un présage de chance et de bonheur.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Légende du Fleuve Niger",
          sousTitre: "La naissance du fleuve sacré",
          resume: "Le fleuve Niger raconte son origine mythologique.",
          histoire: "Selon les légendes de Bamako, le fleuve Niger n'était pas un simple cours d'eau, mais une entité vivante. Il fut formé par un dieu qui versa son énergie divine dans la terre. Depuis ce jour, il est considéré comme un fleuve sacré, porte de vie pour les peuples qui y vivent.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),
    Lieu(
      nom: "Abidjan",
      description: "Ville moderne sur la côte ivoirienne, avec une histoire riche et variée.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "La Naissance de la Lagune",
          sousTitre: "Un amour entre ciel et mer",
          resume: "Une légende raconte la naissance de la lagune d'Abidjan.",
          histoire: "Il y a des siècles, un dieu du ciel tomba amoureux d'une déesse de la mer. Leur union donna naissance à la lagune d'Abidjan, une rencontre parfaite entre les eaux douces et salées. Aujourd'hui, la lagune est considérée comme un symbole d'équilibre et de prospérité.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "L'Héritage de la Danse",
          sousTitre: "La danse sacrée des Baoulés",
          resume: "Un jeune danseur découvre l'origine sacrée de la danse Baoulé.",
          histoire: "Un jeune garçon Baoulé, de la région d'Abidjan, découvrit qu'une danse rituelle de son peuple avait des pouvoirs mystiques. En dansant, il pouvait communiquer avec les ancêtres et recevoir des visions du futur. La danse devint une tradition sacrée.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "Le Secret du Baobab d'Abidjan",
          sousTitre: "Un arbre aux pouvoirs surnaturels",
          resume: "Un baobab à Abidjan renferme un secret ancien.",
          histoire: "Dans le centre d'Abidjan, un immense baobab cachait un secret vieux de plusieurs siècles. Ceux qui osaient s'aventurer sous ses racines pouvaient entendre des voix venant d'autres époques. Un jeune homme découvrit ce secret et devint un gardien des savoirs anciens.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),
    Lieu(
      nom: "Ouagadougou",
      description: "Capitale du Burkina Faso, riche en culture et traditions.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "La Quête de l'Obélisque",
          sousTitre: "Une aventure initiatique",
          resume: "Un jeune garçon part à la recherche d'un obélisque mystérieux.",
          histoire: "Dans les montagnes autour de Ouagadougou, un jeune garçon s'aventura à la recherche d'un obélisque légendaire censé renfermer des pouvoirs mystiques. Son voyage l'initia aux secrets des anciens et aux épreuves de la vie.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "Les Trois Sœurs et le Serpent",
          sousTitre: "La sagesse des ancêtres",
          resume: "Trois sœurs doivent affronter un serpent mythique pour sauver leur village.",
          histoire: "Trois sœurs courageuses de Ouagadougou se lancèrent dans une quête pour sauver leur village d'un serpent monstrueux. Chaque sœur apporta une qualité unique : l'intelligence, la bravoure et la sagesse. Ensemble, elles réussirent à déjouer les pièges du serpent.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Cité des Étoiles",
          sousTitre: "Le destin écrit dans le ciel",
          resume: "Les étoiles montrent le chemin à un jeune garçon.",
          histoire: "Dans Ouagadougou, un jeune garçon s'endormit un soir sous les étoiles et eut une vision. Il vit un chemin lumineux dans le ciel, qu'il suivit le lendemain pour trouver la sagesse et devenir un grand guérisseur.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),
    Lieu(
      nom: "Kigali",
      description: "Capitale du Rwanda, entre modernité et histoire tragique.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "La Montagne des Ancêtres",
          sousTitre: "Le voyage spirituel",
          resume: "Un homme gravit une montagne pour honorer les ancêtres.",
          histoire: "Un homme de Kigali entreprit de gravir une montagne sacrée, réputée pour être la demeure des ancêtres. Après un long voyage, il reçut des visions qui lui révélèrent la vérité sur ses racines et sa place dans le monde.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "Le Cœur de la Forêt",
          sousTitre: "La quête du cœur perdu",
          resume: "Un jeune prince part à la recherche d'un trésor caché dans la forêt.",
          histoire: "Un prince de Kigali, en quête de la sagesse, partit explorer la forêt sacrée à la recherche du cœur perdu. Il apprit que la véritable richesse réside dans la connaissance de soi et l'amour des autres.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "Le Ruisseau des Rêves",
          sousTitre: "Les rêves révélateurs",
          resume: "Les rêves d'un jeune garçon le mènent vers une grande révélation.",
          histoire: "Dans les montagnes de Kigali, un jeune garçon avait des rêves étranges chaque nuit. Un jour, il suivit les indices de ses rêves et découvrit une vallée secrète où il rencontra un sage qui lui révéla son destin.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),
    Lieu(
      nom: "Mombasa",
      description: "Ville côtière du Kenya, au carrefour de cultures et traditions.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
          titre: "Les Gardiens du Corail",
          sousTitre: "Les secrets sous l'océan",
          resume: "Un jeune pêcheur découvre les mystères des fonds marins.",
          histoire: "Un jeune pêcheur de Mombasa découvrit un jour un monde sous-marin peuplé de créatures mythologiques. Avec l'aide d'un ancien gardien du corail, il apprit à comprendre les mystères de l'océan.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "La Reine de la Mer",
          sousTitre: "La légende d'une sirène",
          resume: "Une légende raconte l'histoire d'une sirène qui protège les mers.",
          histoire: "Les habitants de Mombasa racontent l’histoire d’une sirène, qui protégeait les pêcheurs et leurs navires des tempêtes. Mais, un jour, un navire ne respecta pas les règles et la sirène se vengea en envoyant une tempête.",
          imageUrl: "assets/images/Visily.jpg",
        ),
        Conte(
          titre: "Le Voyage du Sable",
          sousTitre: "Légende du désert",
          resume: "Un voyage épique à travers le désert pour découvrir une ancienne cité.",
          histoire: "Un jeune homme de Mombasa partit en quête à travers le désert pour retrouver une cité légendaire. Il dut traverser des dangers pour découvrir les secrets cachés sous le sable.",
          imageUrl: "assets/images/Visily.jpg",
        ),
      ],
    ),

  ];



  static List<Conte> getContesByLieu([String lieuNom = ""]) {
    if (lieuNom.trim().isEmpty) {
      // Retourne tous les contes de tous les lieux
      return lieux.expand((lieu) => lieu.contes).toList();
    }

    Lieu? lieu = lieux.firstWhere(
          (lieu) => lieu.nom.trim().toLowerCase() == lieuNom.trim().toLowerCase(),
      orElse: () => Lieu(nom: "", description: "", imageUrl: "", contes: []),
    );

    return lieu.nom.isNotEmpty ? lieu.contes : [];
  }


}
