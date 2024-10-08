import 'dart:math';
import 'package:readit/Pronunciation/model/statement_model.dart';

class StatementProvider {
  final List<Statement> beginnerStatements = [
    // Greetings and Basic Phrases
    Statement(french: 'Bonjour.', english: 'Hello.'),
    Statement(french: 'Bonsoir.', english: 'Good evening.'),
    Statement(french: 'Salut.', english: 'Hi.'),
    Statement(french: 'Bonne nuit.', english: 'Good night.'),
    Statement(french: 'Au revoir.', english: 'Goodbye.'),
    Statement(french: 'À bientôt.', english: 'See you soon.'),
    Statement(french: 'Merci.', english: 'Thank you.'),
    Statement(french: 'De rien.', english: 'You\'re welcome.'),
    Statement(french: 'S’il vous plaît.', english: 'Please.'),
    Statement(french: 'Excusez-moi.', english: 'Excuse me.'),

    // Common Questions
    Statement(french: 'Comment ça va ?', english: 'How are you?'),
    Statement(french: 'Quel est ton nom ?', english: 'What is your name?'),
    Statement(french: 'Où est la salle de bain ?', english: 'Where is the bathroom?'),
    Statement(french: 'Tu parles anglais ?', english: 'Do you speak English?'),
    Statement(french: 'Combien ça coûte ?', english: 'How much does it cost?'),
    Statement(french: 'Où habites-tu ?', english: 'Where do you live?'),
    Statement(french: 'Quelle est la date aujourd\'hui ?', english: 'What is today\'s date?'),
    Statement(french: 'Où puis-je acheter ceci ?', english: 'Where can I buy this?'),

    // Basic Statements
    Statement(french: 'Oui.', english: 'Yes.'),
    Statement(french: 'Non.', english: 'No.'),
    Statement(french: 'Peut-être.', english: 'Maybe.'),
    Statement(french: 'Je ne sais pas.', english: 'I don\'t know.'),
    Statement(french: 'J’ai faim.', english: 'I am hungry.'),
    Statement(french: 'J’ai soif.', english: 'I am thirsty.'),
    Statement(french: 'Je suis fatigué.', english: 'I am tired.'),
    Statement(french: 'Je ne comprends pas.', english: 'I don\'t understand.'),
    Statement(french: 'J’aime ça.', english: 'I like this.'),
    Statement(french: 'Je n’aime pas ça.', english: 'I don’t like this.'),
    Statement(french: 'C’est délicieux.', english: 'It’s delicious.'),
    Statement(french: 'Je suis perdu.', english: 'I am lost.'),

    // Numbers
    Statement(french: 'Un.', english: 'One.'),
    Statement(french: 'Deux.', english: 'Two.'),
    Statement(french: 'Trois.', english: 'Three.'),
    Statement(french: 'Quatre.', english: 'Four.'),
    Statement(french: 'Cinq.', english: 'Five.'),
    Statement(french: 'Six.', english: 'Six.'),
    Statement(french: 'Sept.', english: 'Seven.'),
    Statement(french: 'Huit.', english: 'Eight.'),
    Statement(french: 'Neuf.', english: 'Nine.'),
    Statement(french: 'Dix.', english: 'Ten.'),
    Statement(french: 'Onze.', english: 'Eleven.'),
    Statement(french: 'Douze.', english: 'Twelve.'),
    Statement(french: 'Treize.', english: 'Thirteen.'),
    Statement(french: 'Quatorze.', english: 'Fourteen.'),
    Statement(french: 'Quinze.', english: 'Fifteen.'),

    // Colors
    Statement(french: 'Rouge.', english: 'Red.'),
    Statement(french: 'Bleu.', english: 'Blue.'),
    Statement(french: 'Vert.', english: 'Green.'),
    Statement(french: 'Jaune.', english: 'Yellow.'),
    Statement(french: 'Noir.', english: 'Black.'),
    Statement(french: 'Blanc.', english: 'White.'),
    Statement(french: 'Orange.', english: 'Orange.'),
    Statement(french: 'Rose.', english: 'Pink.'),
    Statement(french: 'Gris.', english: 'Gray.'),
    Statement(french: 'Violet.', english: 'Purple.'),

    // Days and Months
    Statement(french: 'Lundi.', english: 'Monday.'),
    Statement(french: 'Mardi.', english: 'Tuesday.'),
    Statement(french: 'Mercredi.', english: 'Wednesday.'),
    Statement(french: 'Jeudi.', english: 'Thursday.'),
    Statement(french: 'Vendredi.', english: 'Friday.'),
    Statement(french: 'Samedi.', english: 'Saturday.'),
    Statement(french: 'Dimanche.', english: 'Sunday.'),
    Statement(french: 'Janvier.', english: 'January.'),
    Statement(french: 'Février.', english: 'February.'),
    Statement(french: 'Mars.', english: 'March.'),
    Statement(french: 'Avril.', english: 'April.'),
    Statement(french: 'Mai.', english: 'May.'),
    Statement(french: 'Juin.', english: 'June.'),
    Statement(french: 'Juillet.', english: 'July.'),
    Statement(french: 'Août.', english: 'August.'),
    Statement(french: 'Septembre.', english: 'September.'),
    Statement(french: 'Octobre.', english: 'October.'),
    Statement(french: 'Novembre.', english: 'November.'),
    Statement(french: 'Décembre.', english: 'December.'),

    // Directions
    Statement(french: 'À gauche.', english: 'To the left.'),
    Statement(french: 'À droite.', english: 'To the right.'),
    Statement(french: 'Tout droit.', english: 'Straight ahead.'),
    Statement(french: 'Tournez à gauche.', english: 'Turn left.'),
    Statement(french: 'Tournez à droite.', english: 'Turn right.'),
    Statement(french: 'C’est ici.', english: 'It’s here.'),
    Statement(french: 'C’est là-bas.', english: 'It’s over there.'),

    // Beginner Miscellaneous Phrases
    Statement(french: 'Je suis étudiant.', english: 'I am a student.'),
    Statement(french: 'C’est mon frère.', english: 'This is my brother.'),
    Statement(french: 'C’est ma sœur.', english: 'This is my sister.'),
    Statement(french: 'Je suis marié.', english: 'I am married.'),
    Statement(french: 'Je suis célibataire.', english: 'I am single.'),
    Statement(french: 'Je parle un peu français.', english: 'I speak a little French.'),
    Statement(french: 'Je veux apprendre le français.', english: 'I want to learn French.'),
    Statement(french: 'C’est trop difficile.', english: 'It’s too difficult.'),
    Statement(french: 'C’est facile.', english: 'It’s easy.'),

    // More Greetings and Basic Phrases
    Statement(french: 'Comment vous appelez-vous ?', english: 'What is your name?'),
    Statement(french: 'Je suis désolé.', english: 'I am sorry.'),
    Statement(french: 'Je t\'aime.', english: 'I love you.'),
    Statement(french: 'Bonne chance.', english: 'Good luck.'),
    Statement(french: 'Bon appétit.', english: 'Enjoy your meal.'),

    // More Common Questions
    Statement(french: 'Où est la gare ?', english: 'Where is the train station?'),
    Statement(french: 'À quelle heure ?', english: 'At what time?'),
    Statement(french: 'Quel âge as-tu ?', english: 'How old are you?'),
    Statement(french: 'Où travailles-tu ?', english: 'Where do you work?'),
    Statement(french: 'Que fais-tu ?', english: 'What do you do?'),

    // More Basic Statements
    Statement(french: 'Je suis ici.', english: 'I am here.'),
    Statement(french: 'C’est intéressant.', english: 'It’s interesting.'),
    Statement(french: 'Je suis malade.', english: 'I am sick.'),
    Statement(french: 'Je veux dormir.', english: 'I want to sleep.'),
    Statement(french: 'Il fait chaud.', english: 'It’s hot.'),

    // More Numbers
    Statement(french: 'Seize.', english: 'Sixteen.'),
    Statement(french: 'Dix-sept.', english: 'Seventeen.'),
    Statement(french: 'Dix-huit.', english: 'Eighteen.'),
    Statement(french: 'Dix-neuf.', english: 'Nineteen.'),
    Statement(french: 'Vingt.', english: 'Twenty.'),

    // More Colors
    Statement(french: 'Marron.', english: 'Brown.'),
    Statement(french: 'Cyan.', english: 'Cyan.'),
    Statement(french: 'Beige.', english: 'Beige.'),
    Statement(french: 'Turquoise.', english: 'Turquoise.'),
    Statement(french: 'Lavande.', english: 'Lavender.'),
];


  final List<Statement> intermediateStatements = [
    // Intermediate Travel and Shopping Phrases
    Statement(french: 'Je voudrais acheter un billet.', english: 'I would like to buy a ticket.'),
    Statement(french: 'Où est la gare ?', english: 'Where is the train station?'),
    Statement(french: 'C’est loin ?', english: 'Is it far?'),
    Statement(french: 'Pouvez-vous m’aider ?', english: 'Can you help me?'),
    Statement(french: 'Je cherche un hôtel.', english: 'I am looking for a hotel.'),
    Statement(french: 'Je voudrais acheter ça.', english: 'I would like to buy this.'),
    Statement(french: 'Avez-vous cette taille ?', english: 'Do you have this size?'),
    Statement(french: 'C’est trop cher.', english: 'It’s too expensive.'),
    Statement(french: 'Où est la caisse ?', english: 'Where is the checkout?'),
    Statement(french: 'Est-ce que je peux payer par carte ?', english: 'Can I pay by card?'),

    // Intermediate Health and Emergency
    Statement(french: 'J’ai mal à la tête.', english: 'I have a headache.'),
    Statement(french: 'Je ne me sens pas bien.', english: 'I don\'t feel well.'),
    Statement(french: 'Où est l’hôpital ?', english: 'Where is the hospital?'),
    Statement(french: 'Appelez un médecin, s’il vous plaît.', english: 'Call a doctor, please.'),
    Statement(french: 'Il y a eu un accident.', english: 'There has been an accident.'),
    
    // More Intermediate Travel and Shopping Phrases
    Statement(french: 'Pouvez-vous m’aider à trouver un endroit ?', english: 'Can you help me find a place?'),
    Statement(french: 'Est-ce que ce restaurant est bon ?', english: 'Is this restaurant good?'),
    Statement(french: 'Quel est le meilleur moyen de transport ?', english: 'What is the best mode of transportation?'),
    Statement(french: 'Je voudrais un menu, s’il vous plaît.', english: 'I would like a menu, please.'),
    Statement(french: 'L’addition, s’il vous plaît.', english: 'The bill, please.'),
    Statement(french: 'Y a-t-il un marché local ?', english: 'Is there a local market?'),
    Statement(french: 'Je suis perdu, pouvez-vous m’indiquer le chemin ?', english: 'I am lost, can you give me directions?'),
    Statement(french: 'Est-ce que ça inclut le petit-déjeuner ?', english: 'Does this include breakfast?'),
    Statement(french: 'Avez-vous des chambres disponibles ?', english: 'Do you have any rooms available?'),
    Statement(french: 'Je voudrais un plan de la ville.', english: 'I would like a map of the city.'),

    // More Intermediate Health and Emergency
    Statement(french: 'J’ai besoin d’un bilan de santé.', english: 'I need a health check-up.'),
    Statement(french: 'Est-ce que quelqu’un peut traduire pour moi ?', english: 'Can someone translate for me?'),
    Statement(french: 'J’ai une douleur au ventre.', english: 'I have a stomach ache.'),
    Statement(french: 'Je suis tombé.', english: 'I fell down.'),
    Statement(french: 'Aidez-moi, je me sens mal.', english: 'Help me, I feel unwell.'),
    Statement(french: 'Avez-vous un numéro d’urgence ?', english: 'Do you have an emergency number?'),
    Statement(french: 'Puis-je voir un spécialiste ?', english: 'Can I see a specialist?'),
    Statement(french: 'Je suis en traitement.', english: 'I am undergoing treatment.'),
    Statement(french: 'J’ai besoin d’un rendez-vous.', english: 'I need an appointment.'),
    Statement(french: 'Je dois prendre ce médicament.', english: 'I need to take this medication.'),

    // More Intermediate Social Interactions
    Statement(french: 'Quelle est votre saison préférée ?', english: 'What is your favorite season?'),
    Statement(french: 'Avez-vous des animaux de compagnie ?', english: 'Do you have any pets?'),
    Statement(french: 'Quelles langues parlez-vous ?', english: 'What languages do you speak?'),
    Statement(french: 'Quel est votre livre préféré ?', english: 'What is your favorite book?'),
    Statement(french: 'Comment passez-vous vos week-ends ?', english: 'How do you spend your weekends?'),

    // More Intermediate Work and Study
    Statement(french: 'Je fais des études à temps plein.', english: 'I am studying full-time.'),
    Statement(french: 'J’ai une réunion demain.', english: 'I have a meeting tomorrow.'),
    Statement(french: 'Comment se passe votre travail ?', english: 'How is your work going?'),
    Statement(french: 'J’aimerais avoir plus d’expérience.', english: 'I would like to gain more experience.'),
    Statement(french: 'Quel est votre objectif professionnel ?', english: 'What is your career goal?'),


  ];

  final List<Statement> advancedStatements = [
    // Advanced Technology Conversations
    Statement(french: 'La technologie a beaucoup évolué ces dernières années', english: 'Technology has evolved a lot in recent years'),
    Statement(french: 'L’intelligence artificielle révolutionne de nombreux secteurs.', english: 'Artificial intelligence is revolutionizing many industries.'),
    Statement(french: 'La robotique changera la manière dont nous travaillons.', english: 'Robotics will change the way we work.'),
    
    // Advanced Opinions and Abstract Conversations
    Statement(french: 'Je pense que l’éducation est la clé du développement.', english: 'I think education is the key to development.'),
    Statement(french: 'L’art permet d’exprimer des émotions profondes.', english: 'Art allows us to express deep emotions.'),
    
    // Advanced Phrases for Debate
    Statement(french: 'Je suis en désaccord avec cette idée.', english: 'I disagree with this idea.'),
    Statement(french: 'Il est important de considérer toutes les perspectives.', english: 'It’s important to consider all perspectives.'),
    

    // Advanced Technology Conversations
    Statement(french: 'Les nouvelles technologies ouvrent des possibilités infinies.', english: 'New technologies open infinite possibilities.'),
    Statement(french: 'La cybersécurité est essentielle à l’ère numérique.', english: 'Cybersecurity is essential in the digital age.'),
    Statement(french: 'L’Internet des objets transforme notre quotidien.', english: 'The Internet of Things is transforming our daily lives.'),
    Statement(french: 'La blockchain a le potentiel de sécuriser les transactions.', english: 'Blockchain has the potential to secure transactions.'),
    Statement(french: 'La réalité virtuelle offre des expériences immersives uniques.', english: 'Virtual reality offers unique immersive experiences.'),
    Statement(french: 'L’intelligence artificielle peut améliorer la productivité.', english: 'Artificial intelligence can enhance productivity.'),
    Statement(french: 'La technologie biométrique améliore la sécurité.', english: 'Biometric technology enhances security.'),
    Statement(french: 'Le cloud computing facilite le travail collaboratif.', english: 'Cloud computing facilitates collaborative work.'),
    Statement(french: 'Les applications mobiles transforment notre façon de communiquer.', english: 'Mobile apps are transforming the way we communicate.'),
    Statement(french: 'La 5G va révolutionner l’accès à Internet.', english: '5G will revolutionize internet access.'),

    // Advanced Opinions and Abstract Conversations
    Statement(french: 'Je crois que la liberté d’expression est fondamentale.', english: 'I believe that freedom of speech is fundamental.'),
    Statement(french: 'La durabilité devrait être au cœur de nos préoccupations.', english: 'Sustainability should be at the heart of our concerns.'),
    Statement(french: 'Le changement climatique est un défi mondial urgent.', english: 'Climate change is an urgent global challenge.'),
    Statement(french: 'La culture influence notre identité et nos valeurs.', english: 'Culture influences our identity and values.'),
    Statement(french: 'La philosophie nous aide à mieux comprendre notre existence.', english: 'Philosophy helps us understand our existence better.'),
    Statement(french: 'La science et la technologie ne sont pas exemptes de conséquences éthiques.', english: 'Science and technology are not free from ethical consequences.'),
    Statement(french: 'Il est crucial de défendre les droits de l’homme.', english: 'It is crucial to defend human rights.'),
    Statement(french: 'L’éducation doit promouvoir la pensée critique.', english: 'Education must promote critical thinking.'),
    Statement(french: 'La solidarité internationale est essentielle face aux crises.', english: 'International solidarity is essential in the face of crises.'),
    Statement(french: 'Le développement personnel est un processus continu.', english: 'Personal development is a continuous process.'),

    // Advanced Phrases for Debate
    Statement(french: 'Cette question nécessite une analyse approfondie.', english: 'This issue requires a thorough analysis.'),
    Statement(french: 'Les faits doivent guider nos discussions.', english: 'Facts must guide our discussions.'),
    Statement(french: 'Il est essentiel d’écouter les arguments des deux côtés.', english: 'It is essential to listen to arguments from both sides.'),
    Statement(french: 'Nous devons nous engager dans un dialogue constructif.', english: 'We need to engage in constructive dialogue.'),
    Statement(french: 'Les solutions à long terme nécessitent une coopération internationale.', english: 'Long-term solutions require international cooperation.'),
    Statement(french: 'Les opinions divergentes enrichissent le débat.', english: 'Diverging opinions enrich the debate.'),
    Statement(french: 'Il est nécessaire de rester ouvert aux critiques.', english: 'It is necessary to remain open to criticism.'),
    Statement(french: 'Un bon débat repose sur des arguments solides.', english: 'A good debate relies on solid arguments.'),
    Statement(french: 'La modération est clé pour éviter les conflits.', english: 'Moderation is key to avoiding conflicts.'),
    Statement(french: 'Les compromis peuvent conduire à des solutions viables.', english: 'Compromises can lead to viable solutions.'),

    // Advanced Cultural Conversations
    Statement(french: 'La diversité culturelle enrichit notre société.', english: 'Cultural diversity enriches our society.'),
    Statement(french: 'Les traditions façonnent notre perception du monde.', english: 'Traditions shape our perception of the world.'),
    Statement(french: 'La littérature reflète les enjeux sociaux de son époque.', english: 'Literature reflects the social issues of its time.'),
    Statement(french: 'La musique transcende les barrières linguistiques.', english: 'Music transcends linguistic barriers.'),
    Statement(french: 'Le cinéma a le pouvoir de sensibiliser le public.', english: 'Cinema has the power to raise public awareness.'),
    Statement(french: 'L’art est un miroir de la société.', english: 'Art is a mirror of society.'),
    Statement(french: 'Les festivals culturels favorisent la compréhension interculturelle.', english: 'Cultural festivals promote intercultural understanding.'),
    Statement(french: 'Le patrimoine culturel doit être préservé pour les générations futures.', english: 'Cultural heritage must be preserved for future generations.'),
    Statement(french: 'L’éducation artistique est essentielle au développement personnel.', english: 'Art education is essential for personal development.'),
    Statement(french: 'La gastronomie est une expression de la culture.', english: 'Gastronomy is an expression of culture.'),
    
    // Advanced Economic Discussions
    Statement(french: 'L’économie mondiale est interconnectée.', english: 'The global economy is interconnected.'),
    Statement(french: 'Le commerce équitable favorise la justice sociale.', english: 'Fair trade promotes social justice.'),
    Statement(french: 'Les inégalités économiques doivent être réduites.', english: 'Economic inequalities must be reduced.'),
    Statement(french: 'L’innovation est essentielle pour la croissance économique.', english: 'Innovation is essential for economic growth.'),
    Statement(french: 'Les politiques économiques doivent être durables.', english: 'Economic policies must be sustainable.'),



  ];

// Retrieve a specific statement based on the level and index
Statement getStatementByIndex(String level, {int? index}) {
  List<Statement> statements;

  switch (level) {
    case 'Beginner/Débutant':
      statements = beginnerStatements;
      break;
    case 'Intermediate/Intermédiaire':
      statements = intermediateStatements;
      break;
    case 'Advanced/Avancé':
      statements = advancedStatements;
      break;
    default:
      throw Exception('Invalid level provided');
  }

  // If index is null or out of bounds, return a random statement
  if (index == null || index < 0 || index >= statements.length) {
    index = Random().nextInt(statements.length); // Get a random index
  }

  return statements[index];
}

}
