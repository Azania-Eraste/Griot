import '../Models/Conte.dart';
import '../Models/Lieu.dart';

class LieuController {
  static List<Lieu> lieux = [
    Lieu(
      nom: "Ségou",
      description: "Lieu légendaire, berceau de la culture mandingue.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
            titre: "L'Histoire de la Gazelle et du Lion",
            sousTitre: "Le courage face à la peur",
            resume: "Une jeune gazelle montre qu'il faut parfois faire preuve de courage même face au plus grand des prédateurs.",
            histoire: "Dans un village de Ségou, une gazelle effrayée se retrouvait face à un lion. Mais plutôt que de fuir, elle se battit courageusement, prouvant que le courage peut triompher des peurs les plus profondes.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Conte du Baobab Sacré",
            sousTitre: "Les secrets cachés sous ses racines",
            resume: "Un jeune garçon découvre le pouvoir mystique d'un baobab sacré.",
            histoire: "Un enfant du village entend des histoires sur un baobab sacré dont les racines cacheraient des secrets ancestraux. Un jour, il découvre un trésor caché sous ses racines et fait face à des choix difficiles qui changeront son avenir.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "La Fable de la Tortue et du Vautour",
            sousTitre: "L'intelligence contre la force",
            resume: "La tortue utilise sa ruse pour échapper à un vautour affamé.",
            histoire: "Un vautour menaçait de dévorer une tortue, mais la tortue, sage et rusée, réussit à tromper l'oiseau pour sauver sa vie. Ce conte enseigne que la ruse est parfois plus puissante que la force brute.",
            imageUrl: "assets/images/Visily.jpg"
        ),
      ],
    ),
    Lieu(
      nom: "Lagos",
      description: "Le coeur battant du Nigéria, entre tradition et modernité.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
            titre: "La Caverne des Ancêtres",
            sousTitre: "Le retour aux racines",
            resume: "Un jeune homme part à la recherche de ses ancêtres dans une ancienne caverne.",
            histoire: "Un jeune homme, fatigué de la vie moderne, part à la recherche de la caverne ancestrale de sa famille. Dans la caverne, il rencontre l'esprit de ses ancêtres qui lui enseignent la valeur de l'équilibre entre la tradition et le progrès.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "La Création de l'Homme et de la Femme",
            sousTitre: "Une légende Yoruba",
            resume: "L'origine de l'humanité selon les croyances Yoruba.",
            histoire: "Selon les légendes Yoruba, Olodumare créa l'homme et la femme à partir de l'argile, insufflant à l'homme la vie. Mais c'était à travers l'amour et l'harmonie qu'ils devaient prospérer sur terre.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "La Prophétie du Serpent",
            sousTitre: "La sagesse d'un serpent mystique",
            resume: "Un jeune prince doit résoudre l'énigme d'un serpent mystique.",
            histoire: "Dans un royaume Yoruba, un serpent mystique apparaissait chaque nuit pour poser une énigme. Le prince, en quête de sagesse, résout l'énigme et apprend que l'intuition et la sagesse intérieure sont les véritables clés du pouvoir.",
            imageUrl: "assets/images/Visily.jpg"
        ),
      ],
    ),
    Lieu(
      nom: "Alger",
      description: "L'immensité du désert, terre de légendes et de mystères.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
            titre: "La Fille du Désert",
            sousTitre: "La quête de la liberté",
            resume: "Une jeune fille du désert se libère de ses chaînes grâce à sa volonté.",
            histoire: "Dans un petit village isolé du Sahara, une jeune fille s'échappe de la captivité imposée par un chef tyrannique grâce à sa ruse et à son courage. Elle trouve la liberté dans l'immensité du désert.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Mirage de l'Âme",
            sousTitre: "Le piège du désert",
            resume: "Un homme cherche un mirage, croyant y trouver la richesse.",
            histoire: "Un homme perdu dans le désert poursuit un mirage, pensant qu'il contient un trésor caché. Après des jours de marche, il réalise que le véritable trésor réside dans la sagesse et la patience.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Serpent du Sahara",
            sousTitre: "Un serpent qui protège les secrets du désert",
            resume: "Un serpent sacré garde les mystères cachés sous le sable.",
            histoire: "Un serpent géant garde un trésor caché dans le désert. Seuls ceux qui peuvent résoudre les énigmes du désert peuvent découvrir le secret du serpent.",
            imageUrl: "assets/images/Visily.jpg"
        ),
      ],
    ),
    Lieu(
      nom: "Le Caire",
      description: "L'origine des civilisations, aux rives mystérieuses.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
            titre: "La Légende de Cléopâtre et d'Osiris",
            sousTitre: "Une histoire d'amour et de pouvoir",
            resume: "Cléopâtre doit choisir entre l'amour et la politique.",
            histoire: "Cléopâtre, reine d'Égypte, doit choisir entre son amour pour César et le pouvoir qu'elle pourrait avoir avec Pompée. Ce conte explore le thème du pouvoir et des sacrifices dans les choix difficiles.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Voyage de Rê",
            sousTitre: "Le dieu du soleil et sa quête",
            resume: "Rê, le dieu du soleil, voyage à travers l'Égypte pour apporter la lumière.",
            histoire: "Rê, dans sa barque solaire, traverse chaque jour le ciel d'Égypte. Mais, chaque nuit, il doit faire face à des créatures mystérieuses dans le monde souterrain avant de renaître le matin.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Trésor de Toutankhamon",
            sousTitre: "Les mystères de la tombe du pharaon",
            resume: "Un jeune prêtre découvre un secret caché dans la tombe du pharaon.",
            histoire: "Un jeune prêtre, tout juste initié aux mystères de la mort, découvre un coffre caché dans la tombe de Toutankhamon. Mais la découverte du trésor l'amène à une décision cruciale qui pourrait bouleverser l'histoire.",
            imageUrl: "assets/images/Visily.jpg"
        ),
      ],
    ),
    Lieu(
      nom: "Kinshasa",
      description: "Le poumon culturel de l'Afrique centrale.",
      imageUrl: "assets/images/Visily.jpg",
      contes: [
        Conte(
            titre: "La Déesse de la Rivière",
            sousTitre: "Le secret de la rivière Lualaba",
            resume: "Une déesse aide un pêcheur à sauver son village de la sécheresse.",
            histoire: "Un jeune pêcheur, en quête d'eau pour son village, rencontre une déesse cachée sous les eaux de la rivière Lualaba. Elle lui offre un pouvoir mystique pour sauver la communauté, mais à un prix.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "L'Oiseau de la Liberté",
            sousTitre: "Le courage d'un oiseau contre un chasseur",
            resume: "Un oiseau magique aide un jeune homme à échapper à un chasseur.",
            histoire: "Dans les forêts denses autour de Kinshasa, un jeune homme est capturé par un chasseur. Un oiseau mystique, sentant sa souffrance, lui offre la liberté en échange de sa promesse de protéger la nature.",
            imageUrl: "assets/images/Visily.jpg"
        ),
        Conte(
            titre: "Le Masque Sacré",
            sousTitre: "L'histoire d'un masque de pouvoir",
            resume: "Un ancien masque donne un pouvoir aux descendants du grand roi.",
            histoire: "Le masque ancestral de Kinshasa, dont la légende raconte qu'il confère le pouvoir de voir l'avenir, tombe entre les mains d'un jeune homme. Ce dernier doit apprendre à maîtriser ce pouvoir ou risquer de détruire son royaume.",
            imageUrl: "assets/images/Visily.jpg"
        ),
      ],
    ),
    // Ajouter d'autres lieux similaires avec des contes
  ];
}
