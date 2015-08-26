# Import
angular.module('rpghelperApp').run (generator) ->
  generator.add 'start', '{sex}'

  generator.add 'sex', "<b>{firstname}</b> est une femme {intro}<br>C'est une personne {first_impression} motivée par {motivation}.", null, ['!man'], ['woman']
  generator.add 'sex', "<b>{firstname}</b> est un homme {intro}<br>C'est une personne {first_impression} motivée par {motivation}.", null, ['!woman'], ['man']

  generator.add 'intro', '{age} {type} qui {physical_detail} et qui parle {oral_detail}.'

  w_names = [
    'Tum Tum',
    'Lala', 'Crine', 'Mercier', 'Pompon',
    'Ik', 'Shan', 'Île', 'Ula', 'la fille de Joe',
    'Amy', 'Rufe',
    'B-A', 'la Souris',
    'G', 'Omie',
    'Jeanette', 'Cervelle',
    'Matilda', 'Rêveuse', 'Perdrix',
    'Raphaële', 'Entretoise', 'Victoire',
    'Desséchée',
    'Mill', 'Isa', 'Ratée',
    'III', 'Herse', 'Levant', 'Bouilloire',
    'Putride', 'Derniere',
    'Clairon', 'Mimi', 'Fianelli',
    'Pelette', 'Li', 'Harpie', 'Fa', 'Ridée', 'Fusible',
    'Visage', 'Gueularde',
    'Timbrée',
    'Shazza', 'Faune',
    'Guinde', 'Douillette', 'Pomme de Pin',
    'la Suissesse'
  ]

  m_names = [
    'Tum Tum', 'Noueux', 'Tondu', 'Leblanc',
    'Bill', 'Pompon',
    'Ik',
    'Dremmer', 'Balloches', 'Rufe',
    'Jakabaka', 'Ba', 'la Souris', 'Tête de chien',
    'Hugo', 'Roark', 'Lemoine', 'Pierre',
    'Norvell', 'G', 'Omie', 'Sage', 'Corbett',
    'Rhum', 'Piquant', 'Cervelle',
    'Rothschild', 'Rêveur', 'Perdrix',
    'Raphaël', 'Entretoise', 'Victoire', 'Bar', 'Crin',
    'Desséché', 'Millions', 'Grome', 'Foster',
    'Mill', 'Danceny', 'Newton', 'Tao', 'Raté',
    'III', 'Princy', 'Herse', 'Levant', 'Bouilloire',
    'Putride', 'Dernier', 'Deux-Coups', 'Patrick',
    'Clairon', 'Abondo', 'Fianelli', 'Frank',
    'Pelet', 'Li', 'Riz', 'Do', 'Ridé', 'Fusible',
    'Visage', 'Repus', 'Gueulard', 'Imam', 'Bon-Œil',
    'Timbré', 'Laporte', 'Menton', 'Gros-Yeux',
    'Soleil', 'Hoche',
    'Richard', 'Guinde', 'Pomme de Pin',
    'Futal', 'Angleur', 'Goudry', 'Marteau',
    'Antoine', 'Deuil'
  ]

  for name in w_names
    generator.add 'firstname', name, null, ['woman'], ['woman'], {name: name}

  for name in m_names
    generator.add 'firstname', name, null, ['man'], ['man'], {name: name}

  generator.add 'type', ""
  generator.add 'type', "humain ", null, ['fantasy']
  generator.add 'type', "nain ", null, ['fantasy']
  generator.add 'type', "elfe ", null, ['fantasy']
  generator.add 'type', "orc ", null, ['fantasy']
  generator.add 'type', "troll ", null, ['fantasy']

  generator.add 'age', 'agé', null, ['man']
  generator.add 'age', 'agée', null, ['woman']
  generator.add 'age', 'jeune'
  generator.add 'age', '', 6

  generator.add 'first_impression', "séduisante"
  generator.add 'first_impression', "dégoutante"
  generator.add 'first_impression', "mystérieuse"
  generator.add 'first_impression', "étonnante"
  generator.add 'first_impression', "impressionnante"
  generator.add 'first_impression', "calme"
  generator.add 'first_impression', "qui inspire la confiance"
  generator.add 'first_impression', "banale", 10
  generator.add 'first_impression', "hideuse"
  generator.add 'first_impression', "chétive"
  generator.add 'first_impression', "triste"
  generator.add 'first_impression', "qui semble malade"

  # body
  #generator.add 'physical_detail', "est mince"
  generator.add 'physical_detail', "est rachitique"
  generator.add 'physical_detail', "est albinos", 0.3
  generator.add 'physical_detail', "a un gros bide"
  generator.add 'physical_detail', "est très grand", null, ['man']
  generator.add 'physical_detail', "est très musclé", null, ['man']
  generator.add 'physical_detail', "est tout rond", null, ['man']
  generator.add 'physical_detail', "est tout petit", null, ['man']
  generator.add 'physical_detail', "est très grande", null, ['woman']
  generator.add 'physical_detail', "est très musclée", null, ['woman']
  generator.add 'physical_detail', "est toute ronde", null, ['woman']
  generator.add 'physical_detail', "est toute petite", null, ['woman']
  generator.add 'physical_detail', "est obèse"
  generator.add 'physical_detail', "est vouté"
  generator.add 'physical_detail', "est bossu"
  generator.add 'physical_detail', "a la peau {skin_color}"

  # Ears
  generator.add 'physical_detail', "a de gros lobes d'oreille"
  generator.add 'physical_detail', "n'a qu'une seule oreille"
  generator.add 'physical_detail', "n'a pas de lobe d'oreille"
  generator.add 'physical_detail', "a les oreilles décolées"
  generator.add 'physical_detail', "a des boucles d'oreille"
  generator.add 'physical_detail', "a les oreilles déformées"

  # mouth
  generator.add 'physical_detail', "a la bouche en cul de poule"
  generator.add 'physical_detail', "a un bec de lièvre"
  generator.add 'physical_detail', "a des dents parfaites"
  #generator.add 'physical_detail', "a des dents pointues"
  generator.add 'physical_detail', "a des dents gatées"
  #generator.add 'physical_detail', "a des lèvres très fines"
  #generator.add 'physical_detail', "a de grosses lèvres"
  generator.add 'physical_detail', "a des dents en métal"
  generator.add 'physical_detail', "a des dents de lapin"
  generator.add 'physical_detail', "a des dents de la chance"
  generator.add 'physical_detail', "a des dents manquantes"
  generator.add 'physical_detail', "n'a pas de dent"

  # Arms
  generator.add 'physical_detail', "a un bras manquant"
  generator.add 'physical_detail', "a des mains énormes"
  generator.add 'physical_detail', "a des tatouages sur les bras"
  generator.add 'physical_detail', "a des tatouages sur les mains"
  generator.add 'physical_detail', "a une main manquante"
  generator.add 'physical_detail', "a des mains disproportionnées"

  # Noze
  #generator.add 'physical_detail', "a le nez en trompette"
  generator.add 'physical_detail', "a le nez cassé"
  generator.add 'physical_detail', "a le nez pointu"
  #generator.add 'physical_detail', "a un nez de cochon"
  generator.add 'physical_detail', "n'a pas de nez"
  generator.add 'physical_detail', "a un piercing sur le nez"

  # Eyes
  generator.add 'physical_detail', "a les yeux verrons"
  #generator.add 'physical_detail', "porte des lunettes"
  generator.add 'physical_detail', "a un oeuil en moins"
  generator.add 'physical_detail', "a les yeux injectés de sang"
  #generator.add 'physical_detail', "a un oeuil sans pupille"
  generator.add 'physical_detail', "a les yeux très maquillés", null, ['woman']
  generator.add 'physical_detail', "a un strabisme"
  generator.add 'physical_detail', "a les yeux globuleux"
  generator.add 'physical_detail', "n'a pas de sourcils"

  # Face
  generator.add 'physical_detail', "a une longue barbe", null, ['man']
  #generator.add 'physical_detail', "a un percing au visage"
  generator.add 'physical_detail', "a des favoris", null, ['man']
  generator.add 'physical_detail', "a une moustache", null, ['man']
  generator.add 'physical_detail', "est imberbe", null, ['man']
  generator.add 'physical_detail', "est mal rasé", null, ['man']
  #generator.add 'physical_detail', "a un bouc", null, ['man']
  generator.add 'physical_detail', "a des rubans dans sa barbe", null, ['man']
  generator.add 'physical_detail', "a des élastiques dans sa barbe", null, ['man']
  generator.add 'physical_detail', "a des cicatrices sur le visage"
  #generator.add 'physical_detail', "a des piercings sur le visage"
  generator.add 'physical_detail', "a le visage trop maquillé", null, ['woman']
  generator.add 'physical_detail', "a le visage pâle"
  generator.add 'physical_detail', "a des tatouages sur le visage"
  #generator.add 'physical_detail', "a les joues roses"
  generator.add 'physical_detail', "a des peintures tribales sur le visage"
  #generator.add 'physical_detail', "a le visage buriné"
  generator.add 'physical_detail', "a de l'acnée"
  generator.add 'physical_detail', "a les cheveux rasés"

  # Hairs
  generator.add 'physical_detail', "a les cheveux rasés"
  generator.add 'physical_detail', "a les cheveux {hair_color}"
  #generator.add 'physical_detail', "a les cheveux en bataille"
  generator.add 'physical_detail', "a les cheveux gras"
  generator.add 'physical_detail', "a les cheveux très long"
  generator.add 'physical_detail', "a des dessins rasés sur le crane"
  generator.add 'physical_detail', "a des couettes"
  generator.add 'physical_detail', "a des dreadlocks"

  generator.add 'skin_color', "très blanche"
  generator.add 'skin_color', "noire"
  generator.add 'skin_color', "grise"
  generator.add 'skin_color', "jaune"
  generator.add 'skin_color', "rouge", null, ['fantasy']

  generator.add 'hair_color', "blanc", 3
  generator.add 'hair_color', "rose"
  generator.add 'hair_color', "poivre et sel"
  generator.add 'hair_color', "rouge"

  generator.add 'oral_detail', "en répetant « {word_repeat} »", 6
  generator.add 'oral_detail', "souvent à des gens absents"
  generator.add 'oral_detail', "avec un langage ordurier"
  generator.add 'oral_detail', "avec un cheveux sur la langue"
  generator.add 'oral_detail', "avec une petite voix"
  generator.add 'oral_detail', "avec une voix débile"
  generator.add 'oral_detail', "avec une voix suraigue"
  generator.add 'oral_detail', "avec une voix chantante"
  #generator.add 'oral_detail', "avec de l'accent"

  generator.add 'oral_detail', "en beguayant"
  generator.add 'oral_detail', "en zozotant"
  generator.add 'oral_detail', "en postillionnant"
  generator.add 'oral_detail', "en shuintant"
  generator.add 'oral_detail', "en marmonant"
  generator.add 'oral_detail', "d'une voix monotone"
  generator.add 'oral_detail', "d'une voix faible"
  generator.add 'oral_detail', "d'une voix nasillarde"
  generator.add 'oral_detail', "d'une voix guturale"
  generator.add 'oral_detail', "en étant essouflé"
  generator.add 'oral_detail', "en articulant excessivement"

  generator.add 'oral_detail', "en agitant ses doigts"
  generator.add 'oral_detail', "en s'amusant avec un objet"
  #generator.add 'oral_detail', "en gesticulant"
  generator.add 'oral_detail', "en se carressant la barbe", null, ['man']
  #generator.add 'oral_detail', "en changeant d'histoire souvent"
  generator.add 'oral_detail', "en recherchant l'approbation de son auditoire"
  #generator.add 'oral_detail', "en jouant la comédie"
  generator.add 'oral_detail', "en s'adressant à lui même"

  generator.add 'oral_detail', "avec fatalisme"
  generator.add 'oral_detail', "avec optimisme"
  generator.add 'oral_detail', "par questions"
  generator.add 'oral_detail', "très vite"
  generator.add 'oral_detail', "très lentement"
  generator.add 'oral_detail', "avec un vocabulaire réduit"
  generator.add 'oral_detail', "en disgressant sans cesse"
  generator.add 'oral_detail', "en reniflant"
  generator.add 'oral_detail', "de lui par son nom"
  generator.add 'oral_detail', "sans s'arrêter"
  generator.add 'oral_detail', "en mâchant quelque chose"
  generator.add 'oral_detail', "après s'être racler la gorge"
  generator.add 'oral_detail', "en évitant les contacts occulaires"
  #generator.add 'oral_detail', "en étant très près des gens"
  generator.add 'oral_detail', "avec une mauvaise haleine"
  generator.add 'oral_detail', "en prenant le temps de répondre"
  #generator.add 'oral_detail', "en ayant l'air distrait"
  generator.add 'oral_detail', "en voulant être pote"
  generator.add 'oral_detail', "sans terminer ses phrases"
  generator.add 'oral_detail', "souvent à des gens absents"
  generator.add 'oral_detail', "en rôtant régulierement"
  generator.add 'oral_detail', "en soupirant régulièrement"
  generator.add 'oral_detail', "en tordant la bouche"  
  #generator.add 'oral_detail', "avec un faux sourire permanent"
  #generator.add 'oral_detail', "en se léchant les lêvres"

  generator.add 'word_repeat', "Ok !!!"
  generator.add 'word_repeat', "Euhhhhh...."
  generator.add 'word_repeat', "Tu vois c'que j'veux dire ?"
  generator.add 'word_repeat', "Morte de rire"
  generator.add 'word_repeat', "Putain"
  generator.add 'word_repeat', "Délire"
  generator.add 'word_repeat', "Comment on dit déjà ?"
  generator.add 'word_repeat', "Délire"
  generator.add 'word_repeat', "j'ai toujours révé de dire ça"

  generator.add 'start_idea', "C'est {people} {people_adj} qui {interact_with_people} {people} {people_adj}"
  generator.add 'start_idea', "C'est {people} {people_adj} qui {interact_with_people} {people} {people_adj} dans {place}"
  generator.add 'start_idea', "C'est {people} {people_adj} qui {interact_with_place} {place} {place_adj}"
  generator.add 'start_idea', "C'est {people} {people_adj} qui {interact_with_place} {place} {place_adj} avec {people}"

  generator.add 'people', "un scientifique"
  generator.add 'people', "un gourou"
  generator.add 'people', "un chef d'état"
  generator.add 'people', "un top model"
  generator.add 'people', "un dealer", null, ['!fantasy']
  generator.add 'people', "un flic"
  generator.add 'people', "une personne riche"
  generator.add 'people', "un acteur"
  generator.add 'people', "un corporatiste", null, ['cyber']
  generator.add 'people', "un fixer", null, ['cyber']
  generator.add 'people', "un médecin"
  generator.add 'people', "un journaliste"
  generator.add 'people', "un mendiant"

  generator.add 'people_adj', "fou"
  generator.add 'people_adj', "machiavélique"
  generator.add 'people_adj', "célèbre"
  generator.add 'people_adj', "très vieux"
  generator.add 'people_adj', "démoniaque"
  generator.add 'people_adj', "généreux"
  generator.add 'people_adj', ""
  generator.add 'people_adj', ""
  generator.add 'people_adj', ""

  generator.add 'interact_with_people', "demande de l'aide a"
  generator.add 'interact_with_people', "poursuit"
  generator.add 'interact_with_people', "recherche"
  generator.add 'interact_with_people', "veux séduire"
  generator.add 'interact_with_people', "se fait passer pour"
  generator.add 'interact_with_people', "torture"
  generator.add 'interact_with_people', "s'allie avec"

  generator.add 'interact_with_place', "veux s'introduire dans"
  generator.add 'interact_with_place', "construit"
  generator.add 'interact_with_place', "découvre"
  generator.add 'interact_with_place', "détruit"
  generator.add 'interact_with_place', "se cache dans"
  generator.add 'interact_with_place', "veux s'évader d'"
  generator.add 'interact_with_place', "veux se débarrasser d'"
  generator.add 'interact_with_place', "achète"

  generator.add 'place', "une prison"
  generator.add 'place', "un laboratoire"
  generator.add 'place', "un hôtel", null, ['!fantasy'] 
  generator.add 'place', "une secte"
  generator.add 'place', "une université"
  generator.add 'place', "une école"
  generator.add 'place', "une morque"
  generator.add 'place', "un égout", null, ['!fantasy']
  generator.add 'place', "un supermarché", null, ['!fantasy']
  generator.add 'place', "un club privé", null, ['!fantasy']
  generator.add 'place', "un casino", null, ['!fantasy']
  generator.add 'place', "un cinéma", null, ['!fantasy']
  generator.add 'place', "une centrale nucléaire", null, ['!fantasy']
  generator.add 'place', "une base militaire", null, ['!fantasy']
  generator.add 'place', "un asile psychiatrique"
  generator.add 'place', "une église"
  generator.add 'place', "une forêt"
  generator.add 'place', "un château"
  generator.add 'place', "une usine", null, ['!fantasy']

  generator.add 'place_adj', "illégal(e)"
  generator.add 'place_adj', "clandestin(e)"
  generator.add 'place_adj', "hanté(e)", null, ['fantasy']
  generator.add 'place_adj', "détruit(e)"
  generator.add 'place_adj', "désert(e)"
  generator.add 'place_adj', "abandoné(e)"
  generator.add 'place_adj', "caché(e)"
  generator.add 'place_adj', "piégé(e)"
  generator.add 'place_adj', "", 2

  generator.add 'impro_muse', "{when}"

  generator.add 'when', "à la préhistoire {where}, {who} {what}", null, null, ['prehistory']
  generator.add 'when', "de nos jours {where}, {who} {what}"
  generator.add 'when', "au moyen age {where}, {who} {what}", null, null, ['middle_age']
  generator.add 'when', "pendant la guerre {where}, {who} {what}"
  generator.add 'when', "dans le futur {where}, {who} {what}"
  generator.add 'when', "après une apocalypse {where}, {who} {what}"
  generator.add 'when', "pendant la nuit {where}, {who} {what}"

  generator.add 'where', "dans la forêt"
  generator.add 'where', "dans un supermarché", null, ['!prehistory']
  generator.add 'where', "dans un château"
  generator.add 'where', "à la plage"
  generator.add 'where', "dans un laboratoire", null, ['!prehistory']
  generator.add 'where', "sur un bateau", null, ['!prehistory']
  generator.add 'where', "sur une île"
  generator.add 'where', "chez le dentiste"
  generator.add 'where', "chez le coiffeur"
  generator.add 'where', "dans un cimetière", null, ['!prehistory']
  generator.add 'where', "dans une usine", null, ['!prehistory']
  generator.add 'where', "dans une morgue", null, ['!prehistory']
  generator.add 'where', "en chine {where}"
  generator.add 'where', "en amérique {where}"
  generator.add 'where', "en angleterre {where}"
  generator.add 'where', "en espagne {where}"
  generator.add 'where', "au groenland {where}"
  generator.add 'where', "en égypte {where}"
  generator.add 'where', "en afrique {where}"
  generator.add 'where', "en inde {where}"
  generator.add 'where', "dans un labyrinthe"
  generator.add 'where', "dans le ciel"
  generator.add 'where', "dans un tapis", null, ['!prehistory']
  generator.add 'where', "dans l'herbe", null, ['!prehistory']
  generator.add 'where', "sous l'eau"
  generator.add 'where', "dans un corps vivant"

  generator.add 'who', "un homme {who_details}"
  generator.add 'who', "une femme {who_details}"
  generator.add 'who', "une fillette {who_details}"
  generator.add 'who', "un petit garçon {who_details}"
  generator.add 'who', "une femme agée {who_details}"
  generator.add 'who', "un homme agé {who_details}"
  generator.add 'who', "un couple"

  generator.add 'who_details', "qui porte un sac à dos"
  generator.add 'who_details', "complètement dépressif"
  generator.add 'who_details', "complètement lunatique"
  generator.add 'who_details', "avec une voix suraigue"
  generator.add 'who_details', "avec la bouche en cul de poule"
  generator.add 'who_details', "avec un vélo", null, ['!middle_age', '!prehistory']
  generator.add 'who_details', "vouté"
  generator.add 'who_details', "wesh wesh", null, ['!middle_age', '!prehistory']
  generator.add 'who_details', "très distingué"
  generator.add 'who_details', "complètement fou"
  generator.add 'who_details', "en colère"
  generator.add 'who_details', "qui n'a pas le sens de l'orientation"
  generator.add 'who_details', "avec un animal de compagnie"
  generator.add 'who_details', "qui a les pieds collés au sol"
  generator.add 'who_details', "malhonnnète"

  #domains.who_details.add ""

  generator.add 'what', "coupe du bois"
  generator.add 'what', "joue au tennis", null, ['!middle_age', '!prehistory']
  generator.add 'what', "fait des tags", null, ['!middle_age', '!prehistory']
  generator.add 'what', "travaille le jardin"
  generator.add 'what', "démine une bombe", null, ['!middle_age', '!prehistory']
  generator.add 'what', "passe le permis", null, ['!middle_age', '!prehistory']
  generator.add 'what', "dispense un cours"
  generator.add 'what', "écrit un poème"
  generator.add 'what', "fait des ricochets"
  generator.add 'what', "fabrique une potion"
  generator.add 'what', "réalise une expérience scientifique"
  generator.add 'what', "pêche des poissons"
  generator.add 'what', "fait du ski", null, ['!middle_age', '!prehistory']
  generator.add 'what', "vole un objet précieux"

  generator.add 'motivation', "la vengeance"
  generator.add 'motivation', "la faim"
  generator.add 'motivation', "le désir"
  generator.add 'motivation', "la haine"
  generator.add 'motivation', "la jalousie"
  generator.add 'motivation', "le pouvoir"

  actions = [
    'Sépare-les',
    'Capture quelqu’un',
    'Coinces-en un',
    'Rends coups pour coups (dégâts établis)',
    'Annonce une emmerde à venir',
    'Annonce une emmerde hors-champ',
    'Inflige des dégâts (comme établis)',
    'Prive-les de leur matos',
    'Fais-les passer à la caisse',
    'Déclenche les défauts de leur matos',
    'Dis-leur ce qu’il risque de se passer et redemande',
    'Offre-leur une opportunité, avec ou sans prix à payer',
    'Retourne leur propre action contre eux',
    'Choisis une action d’une de tes menaces ( venant d’un front)'
  ]

  generator.add 'action', actions

  generator.add 'threat', '{warlord}'
  generator.add 'threat', '{landscape}'
  generator.add 'threat', '{brutes}'
  generator.add 'threat', '{afflictions}'
  generator.add 'threat', '{grotesque}'

  generator.add 'warlord', 'un esclavagiste'
  generator.add 'warlord', 'une reine mère'
  generator.add 'warlord', 'un prophète'
  generator.add 'warlord', 'un dictateur'
  generator.add 'warlord', 'un conquérant'
  generator.add 'warlord', 'un male alpha'

  generator.add 'brutes', "un chasseur d'homme"
  generator.add 'brutes', "un parasite"
  generator.add 'brutes', "un culte/une secte"
  generator.add 'brutes', "une famille"
  generator.add 'brutes', "un homme de main"
  generator.add 'brutes', "une foule en colère"

  generator.add 'afflictions', 'une maladie'
  generator.add 'afflictions', 'une illusion'
  generator.add 'afflictions', 'une barière'
  generator.add 'afflictions', 'une coutume'

  generator.add 'afflictions', 'une innondation'
  generator.add 'afflictions', 'un orage'
  generator.add 'afflictions', 'une sècheresse'
  generator.add 'afflictions', 'une invasion de {invade_type}'

  generator.add 'invade_type', 'sauterelles'
  generator.add 'invade_type', 'mouches'
  generator.add 'invade_type', 'serpents'
  generator.add 'invade_type', 'larves'
  generator.add 'invade_type', 'grenouilles'
  generator.add 'invade_type', 'fourmis'
  generator.add 'invade_type', 'chat'
  generator.add 'invade_type', 'chien'

  generator.add 'grotesque', 'un cannibal'
  generator.add 'grotesque', 'un mutant'
  generator.add 'grotesque', 'un masochiste'
  generator.add 'grotesque', 'un être malformé'
  generator.add 'grotesque', 'un fou'
  generator.add 'grotesque', 'un malade contagieux'

  generator.add 'landscape', 'une prison'
  generator.add 'landscape', 'un lieu maudit'
  generator.add 'landscape', 'une fournaise'
  generator.add 'landscape', 'un mirage'
  generator.add 'landscape', 'un labyrinthe'
  generator.add 'landscape', 'une forteresse'
  generator.add 'landscape', 'un effondrement'

  # Story part generator
  generator.add 'story_part', 'Lieu : {story_place}'
  generator.add 'story_part', 'Personne : {story_people}'
  generator.add 'story_part', 'Evénement : {story_event}'
  generator.add 'story_part', 'Objet : {story_object}'
  generator.add 'story_part', 'Sensation : {story_feeling}'

  generator.add 'story_place', 'un escalier {story_adj_ojb}'
  generator.add 'story_place', 'une chambre {story_adj_ojb}'
  generator.add 'story_place', 'un train {story_adj_ojb}'
  generator.add 'story_place', 'au sol'
  generator.add 'story_place', 'en l\'air'
  generator.add 'story_place', 'sous terre'
  generator.add 'story_place', '{place} {place_adj}', 2
  generator.add 'story_place', '{landscape}', 2

  generator.add 'story_people', '{people}'
  generator.add 'story_people', '{grotesque}'
  generator.add 'story_people', '{brutes}'
  generator.add 'story_people', '{warlord}'

  generator.add 'story_event', 'une poursuite'
  generator.add 'story_event', 'une séduction'
  generator.add 'story_event', 'une chute'
  generator.add 'story_event', 'une usurpation d\'identité'
  generator.add 'story_event', 'une rencontre innatendue'
  generator.add 'story_event', 'une rencontre inéspérée'
  generator.add 'story_event', 'une erreur sur la personne'
  generator.add 'story_event', 'un orage'
  generator.add 'story_event', 'une pluie'
  generator.add 'story_event', 'une tempête'
  generator.add 'story_event', 'un saut temporel', null, ['sci-fi']
  generator.add 'story_event', 'une embuscade'
  generator.add 'story_event', 'une bonne surprise'
  generator.add 'story_event', 'une mauvaise surprise'
  generator.add 'story_event', 'un cri horrible'
  generator.add 'story_event', 'affliction', 3

  generator.add 'story_object', '{story_obj} {story_adj_ojb}'

  generator.add 'story_obj', 'un livre'
  generator.add 'story_obj', 'un dé'
  generator.add 'story_obj', 'une chaise'
  generator.add 'story_obj', 'un ordinateur'
  generator.add 'story_obj', 'un sac'
  generator.add 'story_obj', 'un stylo'
  generator.add 'story_obj', 'une arme'
  generator.add 'story_obj', 'un outil'
  generator.add 'story_obj', 'une paire de chaussure'
  generator.add 'story_obj', 'un véhicule'
  generator.add 'story_obj', 'une paire de lunette'
  generator.add 'story_obj', 'une montre'
  generator.add 'story_obj', 'une carte géographique'

  generator.add 'story_adj_ojb', 'cassé(e)'
  generator.add 'story_adj_ojb', 'magique'
  generator.add 'story_adj_ojb', 'maudit(e)'
  generator.add 'story_adj_ojb', 'dangereux(se)'
  generator.add 'story_adj_ojb', 'piégé(e)'

  generator.add 'story_feeling', 'une odeur horrible'
  generator.add 'story_feeling', 'une odeur agréable'
  generator.add 'story_feeling', 'il fait très chaud'
  generator.add 'story_feeling', 'il fait très froid'
  generator.add 'story_feeling', 'le sommeil'
  generator.add 'story_feeling', 'la fatigue'
  generator.add 'story_feeling', '{motivation}'

  generator.add 'story_adj_feel', 'ignoble'
  generator.add 'story_adj_feel', 'agréable'
  generator.add 'story_adj_feel', 'horrible'
  generator.add 'story_adj_feel', 'étonnant(e)'


