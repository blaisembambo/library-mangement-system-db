create database library_management_system_db;

use library_management_system_db;

create table Author(id int auto_increment primary key not null,
first_name varchar(255) not null,
last_name varchar(45),
biography text);

create table Publisher(id int auto_increment primary key not null,
first_name varchar(100) not null,
last_name varchar(100),
email varchar(45));

create table Borrower(cardNo varchar(16) primary key not null,
first_name varchar(45) not null,
last_name varchar(45));

create table Library_branch(id int auto_increment primary key not null,
name varchar(100) not null,
adress varchar(255) not null);

create table Book(id int auto_increment primary key not null,
title varchar(255) not null,
publisher_id int not null,
author_id int not null,
foreign key (publisher_id) references Publisher (id) on delete cascade,
foreign key (author_id) references Author (id) on delete cascade
)engine=innodb;

create table Book_copies(id int auto_increment primary key not null,
book_id int not null,
library_branch_id int not null,
no_of_copies int not null,
foreign key (book_id) references Book (id) on delete cascade,
foreign key (library_branch_id) references Library_branch (id) on delete cascade
)engine=innodb;

create table Book_loans(id int auto_increment primary key not null,
library_branch_id int not null,
borrower_cardNo varchar(16) not null,
book_id int not null,
date_out datetime not null,
due_date datetime not null,
foreign key (library_branch_id) references Library_branch (id) on delete cascade,
foreign key (borrower_cardNo) references Borrower (cardNo) on delete cascade,
foreign key (book_id) references Book (id) on delete cascade
)engine=innodb;

INSERT INTO Author (first_name) VALUES
('Aceval Nora'),
('Adam Olivier'),
('Adams Pam'),
('Adriansen Sophie'),
('Agence Quand les livres relient'),
('Agopian Annie'),
('Ahlberg Janet et Allan'),
('Aimé Marcel'),
('Aït Ahmed Salamia'),
('Aladjidi Virginie'),
('Albert Adrien'),
('Alemagna Béatrice'),
('Alibeu Géraldine'),
('Alix Cécile'),
('Allancé Mireille d'''),
('Allemand Sylvie'),
('Allen Nicholas'),
('Alline Christophe'),
('Alméras Arnaud'),
('Alonso Jose Ramon'),
('Altan'),
('Amrouche Taos'),
('Andersen Hans Christian'),
('Angeli May'),
('Angelou Maya'),
('Aribaud Jean Luc'),
('Armange Xavier'),
('Armellini Chiara'),
('ARPLE'),
('Arraga de Malherbe Virginia'),
('Arrou-Vignod Jean Philippe'),
('Ashbé Jeanne'),
('Astolfi Claire'),
('Attiogbé Magali'),
('Aubert Brigitte'),
('Aubrun Claude'),
('Aubrun Claudine'),
('Audren'),
('Ayadi Boubakeur'),
('Bachelet Gilles'),
('Backès Michel'),
('Badescu Ramona'),
('Baer Julien'),
('Bahar Sunar Ozge'),
('Bailly Maître Marie Astrid'),
('Balpe Anne Gaëlle'),
('Baltscheit Martin'),
('Banks Kate'),
('Barbarou Lucienne'),
('Barbeau Philippe'),
('Barcilon Marianne'),
('Baret Idatte Corinne'),
('Barman Adrienne'),
('Baron Marc'),
('Baronian Jean-Baptiste'),
('Barrett Judi'),
('Barrier Perceval'),
('Barroux'),
('Barthélémy Mimi'),
('Barton Byron'),
('Bataille Marion'),
('Bathany Claude'),
('Battault Paule'),
('Battut Eric'),
('Bauer Jutta'),
('Bauer Marion Dane'),
('Baum Gilles'),
('Bayar Michèle'),
('Bayard Michèle'),
('Beamri R'),
('Beaude PM. et Arrou-Vignod JP'),
('Beauvois Delphine'),
('Becker Aaron'),
('Beigel Christine'),
('Belhalfaoui Hamou'),
('Ben Kemoun Hubert'),
('Ben Soussan et collectif'),
('Ben Soussan Patrick'),
('Benameur Jeanne'),
('Benjelloun Saïd'),
('Benoist Cécile'),
('Berchoud Bruno'),
('Bergèse Paul'),
('Bermond Monique'),
('Bernard Cécile'),
('Bernard Fred'),
('Berner Rotraut Susanne'),
('Berner Rotraut Suzanne'),
('Bernos Clotilde'),
('Bernstein Galia'),
('Bertier Anne'),
('Bertrand Frédérique'),
('Bertrand Micheline'),
('Bertrand Pierre'),
('Bertron Martin Agnès'),
('Besnier Michel'),
('Bessard Sylvie'),
('Bettelheim Bruno'),
('Béziat Julien'),
('Bialestowski Gérard'),
('Bianco-Levin Nicolas'),
('Bichonnier Henriette'),
('Bickford-Smith Coralie'),
('Bielinsky Claudia'),
('Bigot Gigi'),
('Billiard Jean-Michel'),
('Birant Mehmet Ali'),
('Bisinski Pierrick'),
('Bizouerne Gilles'),
('Blake Quentin'),
('Blake Stéphanie'),
('Blanpain Jean-Pierre'),
('Blegvard E'),
('Blexbolex'),
('Bloch Muriel'),
('Bobe Françoise'),
('Boel Anne Catherine de'),
('Boisrobert Anouck'),
('Boisrobert et Rigaud'),
('Bonbon Cécile'),
('Bone Betty'),
('Bonnafé Marie'),
('Bonnafé\, Cabrero\, Delfourny'),
('Bonnet'),
('Bonniol Magali'),
('Bonotaux Gilles'),
('Bouchard André'),
('Boucher Michel'),
('Boudet Alain'),
('Bougeault Pascale'),
('Boujon Claude'),
('Boulaire Cécile'),
('Bourgeau Vincent'),
('Bourre Martine'),
('Bouteloup Philippe'),
('Boutros Al-maari'),
('Boyer Cécile'),
('Brami Elisabeth'),
('Brami Elizabeth'),
('Bravi Soledad'),
('Brenman Ilan'),
('Bresner Lisa'),
('Bricout Bernadette'),
('Brière Haquet Alice'),
('Brière Joëlle'),
('Brisac Geneviève'),
('Brisou Pellen Evelyne'),
('Brouillard Anne'),
('Brown Ken'),
('Brown Ruth'),
('Browne Anthony'),
('Browne Anthony et Joe'),
('Bruel Christian'),
('Brulet Gilles'),
('Bruley M. C./Tourn Lya'),
('Bruley Marie-Claire'),
('Brun Cosme Nadine'),
('Brunelet Madeleine'),
('Brunet Bénédicte'),
('Brunhoff Jean de'),
('Bryan\, Muzi\, Knappert'),
('Buguet Anne'),
('Bunting E.'),
('Burgaud Pierre Dominique'),
('Burningham John'),
('Buson'),
('Buteau Gaëlle'),
('Buzzeo Toni'),
('Cabaco Silvia L.'),
('Cabrera Jane'),
('Cadier Florence'),
('Cadier Morgane de'),
('Cadot Colin Anne-Marie'),
('Cagnard Dominique'),
('Cali Davide'),
('Cameron Ann'),
('Cannard Edmée'),
('Cantais Claire'),
('Cantin Marc'),
('Cardon Laurent'),
('Carlain Noé'),
('Carle Eric'),
('Carminati Chiara'),
('Carrier Isabelle'),
('Carroll Lewis'),
('Carter David A.'),
('Carter Noëlle et David'),
('Cassabois Jacques'),
('Cathalo Georges'),
('Cathrine Arnaud'),
('Causse Rolande'),
('Cauwe Lucie'),
('Caylou Véronique'),
('Cazals Thierry'),
('Celli Rose'),
('Cendrars Blaise'),
('Césaire Aimé'),
('Cevin Evelyne'),
('Chabas Jean-François'),
('Chabbert Ingrid'),
('Char René'),
('Charlat Benoît'),
('Charlip Rémy'),
('Charmeux Evelyne'),
('Charpentreau Jacques'),
('Chaty Guy'),
('Chaud Benjamin'),
('Chausse Sylvie'),
('Chausson Julia'),
('Chavepeyer I'),
('Chazerand Emilie'),
('Chedid Andrée'),
('Chedru Delphine'),
('Chen Chih-Yuan'),
('Chen Jian Hong'),
('Chen Jiang Hong'),
('Chenouf Yvanne'),
('Chérer Sophie'),
('Cherisey Thérèse de'),
('Chèze Bernard'),
('Chic Suzy'),
('Choux Nathalie'),
('Chraïbi Driss'),
('Church Caroline Jayne'),
('Cissé Mamadou'),
('Claire Céline'),
('Claudel Philippe'),
('Clavel Bernard'),
('Clavel Fabien'),
('Claveloux Nicole'),
('Claverie Jean'),
('Clayton Junior'),
('Clément Claire'),
('Clément Claude'),
('Clément Frédéric'),
('Climo Liz'),
('Coat Anik'),
('Coat Janie'),
('Coat Janik'),
('Cobb Rebecca'),
('Cognet Lilas'),
('Cohen-Janca Irène'),
('Cole Babette'),
('Collectif'),
('Collectif écoliers haïtiens'),
('Collectif enfants'),
('Colmont Marie'),
('Colombani Laetitia'),
('Colombet Julie'),
('Condominas Baptiste'),
('Condominas Laurent'),
('Cone Bryant Sara'),
('Conrad Paul'),
('Cooke Trish'),
('Coppin Brigitte'),
('Coran Pierre'),
('Coran Pierre et Irène'),
('Coran Pierre\, d''après Shakespeare'),
('Corazza Linda'),
('Corenblit Rachel'),
('Corentin Philippe'),
('Corr Christopher'),
('Cortey Anne'),
('Cosneau Olivia'),
('Coste Nadia'),
('Costes Olivier'),
('Courgeon Rémi'),
('Cousins Lucy'),
('Cousseau Alex'),
('Craipeau Jean-Loup'),
('Crausaz Anne'),
('Crews Donald'),
('CRILJ'),
('Cristina Henriqueta'),
('Cros Charles'),
('Crosbie Duncan'),
('Crowther Kitty'),
('Crozon Alain'),
('Cumont Louise-Marie'),
('Curatolo Justine'),
('Cuvellier Vincent'),
('Cvach Milos'),
('Da Silva Christian'),
('Daeninckx Didier'),
('Dahl Roald'),
('Daladier Nathalie'),
('Dalrymple Jennifer'),
('Dang Khoa Tran'),
('Daniau Marc'),
('Darwiche Jihad'),
('Daufresne Michelle'),
('David François'),
('David Gauthier'),
('Davies Benji'),
('Davies Stephen'),
('Dayre Valérie'),
('Daywalt Drew'),
('Dé Claire'),
('De Rockere Geert'),
('Deacon Alexis'),
('Dedieu Thierry'),
('Defourny Michel'),
('Dek Maria'),
('Delacroix Sibylle'),
('Delafosse Claude'),
('Delecroix Hanieh'),
('Delessert Etienne'),
('Dellamarre Bellego V'),
('Delpeuch Régis'),
('Delval Marie Hélène'),
('Delye Pierre'),
('Demasse-Pottier Stéphanie'),
('Deneux Xavier'),
('Denolle Christel'),
('Derouen Jean-Marc'),
('Descamps Dominique'),
('Desnos Robert'),
('Desnouveaux Florence'),
('Desplat-Duc Anne-Marie'),
('Destours Christine'),
('Detamlbel Régine'),
('Devaux Stéfany'),
('Devernois Elsa'),
('Devos Lydia'),
('Dexet Hector'),
('Di Giovanni Evans Brooke'),
('Di Mascio Tony'),
('Diallo Boubacar'),
('Diallo Mamadou'),
('Diallo Muriel'),
('Diament Nic'),
('Diaz Marie'),
('Dieterlé Nathalie'),
('Diéterlé Nathalie'),
('Dio Mohamed'),
('Dodeller Sylvie'),
('Domergue Agnès'),
('Donnio Sylviane'),
('Doray Malika'),
('Doremus Gaëtan'),
('Dorémus Gaétan'),
('Dorémus Gaëtan'),
('Dorin Perrine'),
('Dorin Philippe'),
('Dorléans Marie'),
('Douzou Olivier'),
('Doyle Roddy'),
('Dr Seuss'),
('Dreyfuss Corinne'),
('Dros Imme'),
('Du Faÿ Sabine'),
('Dubé Pierrette'),
('Dubois CK'),
('Dubois Claude K.'),
('Dubois Jean-Claude'),
('Dubost Louis'),
('Dubray Anne-Thérèse'),
('Dubuc Marianne'),
('Ducatteau Florence'),
('Ducos Max'),
('Duda Christian'),
('Dufresne Didier'),
('Dumas Philippe'),
('Dumont Jean-François'),
('Dumortier David'),
('Dunrea Olivier'),
('Duprat Guillaume'),
('Dupuy Dunier Chantal'),
('Duquennoy Jacques'),
('Durand Jean Benoit'),
('Duras Marguerite'),
('Dutruc-Rosset Florence'),
('Duval Elisabeth'),
('Duval Isabelle'),
('Duve Catherine de'),
('Dwell Studio'),
('Ebohéa Marie Félécité'),
('Eeckhout Emmanuelle'),
('Ehlert Lois'),
('El Fathi Mickaël'),
('Elias Jean'),
('Ellwand David'),
('Elschner Géraldine'),
('Eluard Paul'),
('Elzbieta'),
('Emberley Ed'),
('Epanya Christian'),
('Epin Bernard'),
('Erlbruch Wolf'),
('Escarpit Denise'),
('Escoffier Michaël'),
('Escudié René'),
('Estellon Pascale'),
('Falconer Ian'),
('Falorsi Ilaria'),
('Faraggi Anne W.'),
('Farilli Elena'),
('Fastier Yann'),
('Fauliot Pascal'),
('Favret Hafida'),
('Fehr Daniel'),
('Feiffer Jules'),
('Felix Lucie'),
('Félix Lucie'),
('Féron Romano José'),
('Ferrer Nino'),
('Fersen Thomas'),
('Fetjö Raphaël'),
('Fine Anne'),
('Florian Mélanie'),
('Flouw Benjamin'),
('Folika'),
('Fondation Zakoura'),
('Fontanel Béatrice'),
('Fontenaille Elise'),
('Fort Paul'),
('Fortier Natali'),
('Fournier'),
('Fournier Jacques'),
('Fox Mem'),
('François André'),
('Frasson-Cochet Agathe'),
('Fred L'),
('Frier Raphaële'),
('Friot Bernard'),
('Fromental Jean-Luc'),
('Fuentes Roland'),
('Fugier Laurence'),
('Gabriel Pierre'),
('Gabrielle Vincent'),
('Gagnon Nathalie'),
('Galea Claudine'),
('Galeron Henri'),
('Galvin Michel'),
('Garralon Claire'),
('Garth Williams'),
('Gastaut Charlotte'),
('Gaussel Alain'),
('Gay Michel'),
('Gay-Para Praline'),
('Geffen Yehonatan'),
('Géhin Elisa'),
('Gellé Albane'),
('Gendre Nathalie'),
('Gendrin Catherine'),
('Gibert Bruno'),
('Gil Isabelle'),
('Ginsburg Mirra'),
('Giono Jean'),
('Giordano Philip'),
('Girardet et Merleau-Ponty'),
('Girardet Sylvie'),
('Giraud Robert'),
('Glondoumé Sika'),
('Go Hyejin'),
('Goble Paul'),
('Godard Alex'),
('Godeau Vincent'),
('Goffin Josse'),
('Golan Haji'),
('Goossens Philippe'),
('Gougaud Henri'),
('Gouichoux René'),
('Gourounas Jean'),
('Goytisolo José Augustin'),
('Grant Joan'),
('Gratias Claire'),
('Grave Marie-Eve de'),
('Gravel Elise'),
('Gravel François'),
('Graves Robert'),
('Gravett Emily'),
('Gréban Quentin'),
('Greef Sabine de'),
('Green Ilya'),
('Grégoire Caroline'),
('Grelet Isabella'),
('Grenier Christian'),
('Griffon A'),
('Grimm Jacob et Wilhelm'),
('Grimm Jakob et Wilhelm'),
('Grimm Jakob et Willhelm'),
('Grindley Sally'),
('Gripari Pierre'),
('Grosléziat Chantal'),
('Grosz Pierre'),
('Grousset Alain'),
('Grunelius Hollard'),
('Grunelius-Hollard Agnès'),
('Gudule'),
('Guenoun Joël'),
('Guérif Andy'),
('Guettier Bénédicte'),
('Gueyfier Judith'),
('Guibert Françoise de'),
('Guillaume Olive'),
('Guillbaud Luce'),
('Guillevic'),
('Guillon Camille'),
('Guilloppé Antoine'),
('Guillotte Eric'),
('Gunzig Thomas'),
('Gutleben Muriel'),
('Gutman claude'),
('Guyennon Duchêne Claudie'),
('Gypteau Nadia'),
('Hahn Cyril'),
('Hakim Miloud'),
('Hale Nathan'),
('Hall Kirsten'),
('Hannappe David'),
('Harcourt Claire d'''),
('Harrison David'),
('Haughton Chris'),
('Havard Christian'),
('Havette Servane'),
('Hayashi Emiri'),
('Hédelin Pascale'),
('Hee-na Baek'),
('Heitz Bruno'),
('Held Jacqueline et Claude'),
('Helft Claude'),
('Hellings Colette'),
('Henderson Kathy'),
('Henkes Kevin'),
('Henry Jean-Marie'),
('Herbauts Anne'),
('Herbert Scott Ann'),
('Herbreteau Gaston'),
('Hérédia Géraldine'),
('Heurté Yves'),
('Higgins Ryan T'),
('Hikmet Hazim'),
('Hill Eric'),
('Hinckel Florence'),
('Hindenoch Michel'),
('Hirsching Nicolas de'),
('Hoban Kristy Lillian'),
('Hoban Tana'),
('Hobson Bruce'),
('Hoestlandt Jo'),
('Hole Stian'),
('Holmelund Minarik Else'),
('Holzwarth Werner'),
('Horowitz Anthony'),
('Houdart Emmanuelle'),
('Hudrisier Cécile'),
('Hughes Emily'),
('Hugo Hector'),
('Hugo Victor'),
('Hutchins Pat'),
('Ibn el Muqaffa Abdallah'),
('Ichikawa Satomi'),
('Inkpen Mick'),
('Ionesco Eugène'),
('Ipcar Dahlov'),
('Issa'),
('Ivanovitch Lair Albena'),
('Iwamura Kasuo'),
('Iwamura Kazuo'),
('Jacques Benoît'),
('Jadoul Emile'),
('Jaffé Laura'),
('Jaffrennou Yves'),
('Jalbert Philippe'),
('Jalibert Maria'),
('James Simon'),
('Jandl Ernst'),
('Janikovszky Eva'),
('Janisch Hans'),
('Japon'),
('Jay Françoise'),
('Jean Didier'),
('Jean Georges'),
('Jenkins Steve'),
('Joffre Véronique'),
('John Jory'),
('Joie par les livres'),
('Joire Françoise'),
('Jolibois Christian'),
('Joly Fanny'),
('Jonas Anne'),
('Jonquet Thierry'),
('Joslin Sesyle'),
('Joubert Jean'),
('Jun Takabataka'),
('Ka Olivier'),
('Kaïteris Constantin'),
('Kalan Robert'),
('Kalioujny Pauline'),
('Kamoun Martine'),
('Kang Hye-sook'),
('Kanor Fabienne'),
('Kasano Yuchi'),
('Kasza Keiko'),
('Kebrety Maryam'),
('Kemmeter Philippe de'),
('Kérillis Hélène'),
('Kerloc''h Jean-Pierre'),
('Kerloch'' Jean Pierre'),
('Kerr Judith'),
('Kessler Frédéric'),
('Khaldi-Bonnaud Ahmed'),
('Khémir Nacer'),
('Khoury Gatha Vénus'),
('Khoury-Ghata Vénus'),
('Kiffer Christine'),
('Kiko'),
('Kimiko'),
('Kimura Ken'),
('Kinsa Gabriel'),
('Kipling Rudyard'),
('Kipling/Chaliand Gérard'),
('Kitamura Satochi'),
('Kitzing Constanze'),
('Klassen Jon'),
('Klausmeier Klaus'),
('Knowles Sheena'),
('Kochka'),
('Kochka\, d''après Andersen'),
('Koenig Viviane'),
('Kogjan Grégoire'),
('Konaté Moussa'),
('Könnecke Ole'),
('Korkos Alain'),
('Kowarsky Didier'),
('Kraus Robert'),
('Krings Anton'),
('Kubler Laurence'),
('Kunhardt Dorothy'),
('Kuo Fifi'),
('La Fontaine'),
('La Villefromoit Sophie de'),
('Laâbi Jocelyne'),
('Labourdique Jacques'),
('Lacasa Gomez Bianca'),
('Lacet Yvonne'),
('Lacombe Benjamin'),
('Lacor Agnès'),
('Laffon Caroline'),
('Laffon Martine'),
('Lafonta Isabelle'),
('Lagerlof Selma'),
('Lalinon Gbado Béatrice'),
('Lambersy Werner'),
('Lang Suzanne'),
('Laporte Michel'),
('Larizza Olivier'),
('Larreula Enric'),
('Latyk Olivier'),
('Laugausie Justine de'),
('Laurent Nathalie'),
('Lautru Michel'),
('Lavie Oren'),
('Le Clézio JMG'),
('Le Craver Jean Louis'),
('Le Gall Loïc'),
('Le Hir Marion'),
('Le Néouanic Lionel'),
('Le Saux A. et Solotareff G.'),
('Le Saux Alain'),
('Le Touzé Anne Isabelle'),
('Lear Edward'),
('Leblanc Catherine'),
('Leblond Michaël'),
('Lecaye Alexis'),
('Lecaye Emmanuel'),
('Lecaye Olga'),
('Lechermeier Philippe'),
('Lecointre Jean'),
('Leduc Daniel'),
('Lee Hyun-kyeong'),
('Lee Suzy'),
('Legendre Françoise'),
('Léger-Cresson Nathalie'),
('Legrand Gilbert'),
('Legrand Marie'),
('Lejonc Régis'),
('Lenain Thierry'),
('Lenglet Maud'),
('Leo Patrice'),
('Leprince de Beaumont'),
('Leroy Hélène'),
('Leroy Jean'),
('Lestrade Agnès de'),
('Letuffe Anne'),
('Lévêque Valérie'),
('Levine Ellen'),
('Lévy Didier'),
('Lewis Jean-Patrick'),
('Lexau Joan'),
('Leynaud Johan'),
('Lhomme Sandrine'),
('Lila Prap'),
('Lilienthal Henri'),
('Lionni Leo'),
('Lloyd Sam'),
('Lobel Arnold'),
('Lodge Jo'),
('London Jack'),
('Longour Michèle'),
('Lorant-Jolly Annick'),
('Louchard Antonin'),
('Loucou Michel'),
('Loufane'),
('Louis Catherine'),
('Louzon Camille'),
('Loyer Anne'),
('Lü Yuan'),
('Lucia Scuderi'),
('Luciani Jean-Luc'),
('M Serres Alain'),
('Mabanckou Alain'),
('Mac Bratney Sam'),
('Mac Kee David'),
('Machado Ana Maria'),
('Macri Giancarlo'),
('Magnier Bernard'),
('Major Lenia'),
('Malineau Jean Hugues'),
('Mallard Marie-Constance'),
('Malnuit Françoise'),
('Malte Marcus'),
('Manceau Edouard'),
('Mandelbaum Pili'),
('Manfeï Obin'),
('Mankour Mohamed'),
('Marais Frédéric'),
('Marc Solal'),
('Marceau Fani'),
('Mardam-Bey Farouk'),
('Mari Iela'),
('Mari Iela et Enzo'),
('Marie et Joseph'),
('Marsol Manuel'),
('Martin Bill'),
('Martin Simon'),
('Massenot Véronique'),
('Massini Anaïs'),
('Matéo Pepito'),
('Matéo Pepito\, Bigot Gigi'),
('Mathis'),
('Mathis Jean-Marc'),
('Matsuoka Tatsuhide'),
('Mau Olivier'),
('Maubille Jean'),
('Maudet Mathieu'),
('Maunoury Jean Louis'),
('Maussion Anne'),
('Mayer Mercer'),
('Mayo Margaret'),
('Mazard Claire'),
('Mbaye Ndaak Babacar'),
('Mbodj Souleymane'),
('McDermott Gerald'),
('McKinnon Heidi'),
('McNeil David'),
('Mebs Gudrun'),
('Mélano Olivier'),
('Mélisou Marie'),
('Mercier Julie'),
('Mereu Agata'),
('Merleau-Ponty Claire'),
('Mets Alan'),
('Meunier Henri'),
('Mezquita Roberto'),
('Mezzalama Chiara'),
('Miège-Simansky Denise'),
('Minfong Ho'),
('Minhos Martins Isabel'),
('Minne Brigitte'),
('Mirman Anne'),
('Misraki'),
('Misslin Sylvie'),
('Miyamoto Tadao'),
('Moeyaert Bart'),
('Moissard Boris'),
('Moka'),
('Mollet Charlotte'),
('Monari Manuela'),
('Moncomble Gérard'),
('Monfreid Dorothée de'),
('Moniz Madalena'),
('Monloubou Claire'),
('Monnereau Michel'),
('Monsabert A.-Sophie de'),
('Montardre Hélène'),
('Montse Gisbert'),
('Moore Inga'),
('Moraes Vinicius de'),
('Morel François'),
('Morgan'),
('Morgenstern Susie'),
('Moriceau'),
('Morin Patrick'),
('Morrison Toni et Slade'),
('Mosconi Patrick'),
('Mounié Didier'),
('Mounier Fabienne'),
('Mourlevat Jean Claude'),
('Moüy Iris de'),
('Mrzyk et Moriceau'),
('Muller Gerda'),
('Munari Bruno'),
('Muratet Louis'),
('Musa Hassan'),
('Musa Patricia'),
('Muzi Jean'),
('Muzo'),
('Mwankumi Dominique'),
('Nadaud Claire'),
('Nadaus Roland'),
('Nadja'),
('Nakamura Junko'),
('Naumann Villemin Christine'),
('Naumann-Villemin Christine'),
('Neeman Sylvie'),
('Némo et Jadoul Emile'),
('Nessmann Philippe'),
('Nguyên Viet Chung'),
('Nickl Peter'),
('Nicodème Béatrice'),
('Nicolas Christophe'),
('Nicolino Fabrice'),
('Nières-Chevrel Isabelle'),
('Ninie'),
('Nivola Claire'),
('Noguès Jean-Côme'),
('Noiret Gérard'),
('Norac Carl'),
('Norge'),
('Nottet Pascal'),
('O''Byrne Nicola'),
('Obin Manfeï'),
('Ocelot Michel'),
('Ohmura Tomoko'),
('Olive Guillaume'),
('Ollivier Mikaël'),
('Olten Manuela'),
('Oppel Jean-Luc'),
('Orizet Jean'),
('Orsenna Erik'),
('Oster Christian'),
('Ouyessad Myriam'),
('Ovaldé Véronique'),
('Ovide'),
('Pacovska Kveta'),
('Painset Marie-France'),
('Palluy Christine'),
('Pang Miguel'),
('Paoloni Sonia'),
('Pappa Rodoula'),
('Paris Cécile'),
('Paris Hugues'),
('Parlange Adrien'),
('Parot Annelore'),
('Pastoureau Michel'),
('Pavlenko Marie'),
('Pef'),
('Péghaire Vincent'),
('Pegorier Saralisa'),
('Pelot Dylan'),
('Pennac Daniel'),
('Pennart Geoffroy de'),
('Pereira Marjolaine'),
('Perez Sébastien'),
('Périgot Joseph'),
('Pernaudet Christophe'),
('Perrault Charles'),
('Perreault Mélanie'),
('Perret Delphine'),
('Perrin Clotilde'),
('Perrin Julien'),
('Perrin Martine'),
('Petit Michèle'),
('Peynot Patrick'),
('Pfeiffer Virginie'),
('Pianina Vincent'),
('Picouly Daniel'),
('Pierpont Nathalie de'),
('Pigois Melissa'),
('Pinfold Levi'),
('Pinguilly Yves'),
('Pinkey Jerry'),
('Pinson Zaza'),
('Pinto Deborah'),
('Pintus Eric'),
('Piquemal Michel'),
('Pittau Francesco'),
('Pizzoli Greg'),
('Place François'),
('Pochard Mireille'),
('Poe Edgar'),
('Poirot-Cherif Sandra'),
('Poirot-Chérif Sandra'),
('Poitras Anique'),
('Pommaux Yvan'),
('Pomme d''api'),
('Pontavice Clémentine de'),
('Ponti Claude'),
('Poslaniec Christian'),
('Pourquié Bernadette'),
('Poussier Audrey'),
('Pouyet Marc'),
('Prévert Jacques'),
('Prévot Franck'),
('Proeng Pich'),
('Promeyrat Coline'),
('Propp Vladimir'),
('Proust Marcel'),
('Quatromme France'),
('Queneau Raymond'),
('Quintane Nathalie'),
('Rachmuhl Françoise'),
('Raisson Gwendoline'),
('Ramadier'),
('Ramos Mario'),
('Ramstein Anne-Margot'),
('Rascal'),
('Raschka Chris'),
('Rateau Dominique'),
('Rathman Peggy'),
('Ravishankar A'),
('Rayna S Baudelot O'),
('Renault Jean'),
('Ressouni Demigneux Karim'),
('Rettich Maget et Ralph'),
('Ribeyron Samuel'),
('Rice Hélène'),
('Riddell Chris'),
('Rimbaud Arthur'),
('Rivoal Marine'),
('Robberecht Thierry'),
('Robert Nadine'),
('Robillard Jean-Marie'),
('Rocard Anne'),
('Rodari Gianni'),
('Roger Marie Sabine'),
('Rogier Françoise'),
('Roland Claudine'),
('Roman Ghislaine'),
('Roman Nadia'),
('Rosen Michael'),
('Rosensthiel Agnès'),
('Ross Tony'),
('Rossi Annie'),
('Roubaud Jacques'),
('Roumiguière Cécile'),
('Roux Delphine'),
('Roux Julien'),
('Rouzé Marina'),
('Roxbee Cox Phil'),
('Roy Claude'),
('Rueda Claudia'),
('Ruel Adeline'),
('Ruillier Jérôme'),
('Ruiz Olivia'),
('Rutten Mélanie'),
('S.A.H.G.Y.K.O.D.'),
('Sabbagh Clémence'),
('Sadat Mandana'),
('Sadeler Joël'),
('Safirstein Julie'),
('Saint-Exupéry Antoine de'),
('Sakaï Komako'),
('Sala Felicita'),
('Salinas Veronica'),
('Salisbury Martin'),
('Sall Mamadou'),
('Salvi Manuela'),
('Sanchez Virginie'),
('Sanders Alex'),
('Sanders Louis'),
('Santangelo Eugène'),
('Santini Bertrand'),
('Sara'),
('Sarno Hélène'),
('Sarrazin Jean-Charles'),
('Scelles Millie J'),
('Schädlich Hans Joachim'),
('Schickel Emilie'),
('Schneider Christine'),
('Schnitzberger Simon'),
('Schubiger Jürg'),
('Schwarz Annelies'),
('Scotto Thomas'),
('Seeber Dorothea'),
('Séguy Fabienne'),
('Selena Elena'),
('Sellier Marie'),
('Sendak Maurice'),
('Sénégas Stéphane'),
('Seong-eun Kim'),
('Serres Alain'),
('Servant Stéphane'),
('Seyvos Florence'),
('Sheldon Dyan'),
('Shingu Susumu'),
('Shulevitz Uri'),
('Silei Fabrizio'),
('Silloray'),
('Silverstein Shel'),
('Simard Eric'),
('Siméon Jean Pierre'),
('Simler Isabelle'),
('Simon Quitterie'),
('Simonsen Michèle'),
('Skarmeta Antonio'),
('Slater Dashka'),
('Smith Lane'),
('Snicket Lemony'),
('Soleil Emilie et Jérôme'),
('Solet Bertrand'),
('Soletti Pierre'),
('Solotareff Grégoire'),
('Sommerset Mark'),
('Sorman Joy'),
('Soupault Philippe et Ré'),
('Soutif François'),
('Spier Paul'),
('Steff'),
('Stehr Frédéric'),
('Stehr Gérald'),
('Steig William'),
('Stein Mathilde'),
('Stella Gaia'),
('Sternberg Jacques'),
('Stevenson RL'),
('Storr Catherine'),
('Strasser Susanne'),
('Stravinsky Igor'),
('Su Dong Po'),
('Supervielle Jules'),
('Surget Alain'),
('Swanson Susan Marie'),
('Swift Jonathan'),
('Szac Murielle'),
('Taback Simms'),
('Tae-Jun Lee'),
('Taïeb el Alj Ahmed'),
('Tallec Olivier'),
('Tamarin Annette'),
('Tanaka Béatrice'),
('Tardieu Jean'),
('Tashlin Frank'),
('Tawa Kouam'),
('Teckentrup Britta'),
('Tenor Arthur'),
('Texier Ophélie'),
('Teyssèdre Fabienne'),
('Thévenet Séverine'),
('Thiès Paul'),
('Thiry Marie-Eve'),
('Thomas Valérie'),
('Thydell'),
('Timmers Leo'),
('Titus'),
('Tixier Jean Christophe'),
('Todd-Stanton Joe'),
('Tolstoï Alexis'),
('Tolstoï Léon'),
('Torres Cimarusti Marie'),
('Touquet Marie'),
('Touzeil Jean Claude'),
('Trédez Emmanuel'),
('Troïanowski Johan'),
('Trotereau Anne'),
('Trouillot Evelyne'),
('Tsarfati Einat'),
('Tullet Hervé'),
('Tupera Tupera'),
('Turin Adela'),
('Turin Joëlle'),
('Twain Mark'),
('Tzannes'),
('Ubac Claire'),
('UG Philippe'),
('Uman Jennifer/Vidal V.'),
('Ungerer Tomi'),
('Urial'),
('Utton Peter'),
('Uzunoglu Adelheid'),
('Valckx Catharina'),
('Valckx Catherine'),
('Valentin Elsa'),
('Van Biesen Koen'),
('Van de Velden Edward'),
('Van de Wendel Edouard'),
('Van der Hout Mies'),
('Van der Linden Sophie'),
('Van der Zee Ruth'),
('Van Genechten Guido'),
('Van Hout Mies'),
('Van Laan Nancy'),
('Van Zeveren'),
('Van Zeveren Michel'),
('Varley Susan'),
('Vasconcelos José Mauro de'),
('Vassallo Rose-Marie'),
('Vast Emilie'),
('Vatinel Pascal'),
('Vaugelade Anaïs'),
('Veille Eric'),
('Verdelet-Lamare Annie'),
('Verluca Constance'),
('Vernette Véronique'),
('Vian Boris'),
('Victor Sylvain'),
('Vidal Francine'),
('Vidal Séverine'),
('Vignal Hélène'),
('Villard Marc'),
('Villiot Bernard'),
('Vincensini Paul'),
('Vincent François'),
('Vincent Gabrielle'),
('Vinet Sofie'),
('Vissière Sophie'),
('Vivardi Liuna'),
('Voake Charlotte'),
('Voigt Marie'),
('Voltz Christian'),
('Voutch'),
('Waddell Martin'),
('Wagner Jenny'),
('Wall Fiona'),
('Watanabe Issa'),
('Watanabe Michio'),
('Watt Fiona'),
('Weaver Jo'),
('Weiss Anne'),
('Weninger Brigitte'),
('Weulersse Odile'),
('Whelan Gloria'),
('Wiesner David'),
('Willems Mo'),
('Willer Thérèse'),
('Willis Jeanne'),
('Wilsdorf Anne'),
('Wintrebert Joëlle'),
('Wise Brown Margaret'),
('Wisniewski Gaya'),
('Witek Jo'),
('Wlodarczyk Isabelle'),
('Wood Don'),
('Wormell Chris'),
('Yagoubi Valérie'),
('Yeh Chun-Liang'),
('Yeoman John'),
('Yi Gee Eun'),
('Yolen Jane'),
('Yonezu Yusuke'),
('Yumoto Kazumi'),
('Yzac Adeline'),
('Zarcate Catherine'),
('Zemach Margot'),
('Zenzius Pierre'),
('Zidrou'),
('Zimet Ben'),
('Zoboli Giovanna'),
('Zolotow Charlotte'),
('Zullo Germano');


INSERT INTO Publisher (first_name) VALUES
('A pas de loups'),
('A2MIMO'),
('ABC Melody'),
('ACCES'),
('Actes Sud'),
('Actes sud junior'),
('Aedis'),
('Albin Michel'),
('Albin Michel jeunesse'),
('Aldéran édition'),
('Alice'),
('Alice jeunesse'),
('Alkindi'),
('Almaterra'),
('Alyssa'),
('Amaterra'),
('AND'),
('ANLCI'),
('Après la lune jeunesse'),
('Assoc fr pour la lecture'),
('Assoc. Paris-musées'),
('Association Afflux'),
('Atelier du poisson soluble'),
('Atelier du poissson soluble'),
('Atelier du Scribe'),
('Auto production'),
('Autrement'),
('Autrement jeunesse'),
('Balivernes'),
('Balzane'),
('Bayard'),
('Bayard jeunesse'),
('Belin'),
('Belin jeunesse'),
('Belize'),
('Benoît Jacques'),
('Benoît Jacques Books'),
('bib.municip Paris'),
('Bibliothèque de Toulouse'),
('Bilboquet'),
('Biscoto'),
('BNF'),
('Bruno Doucey'),
('Bulles de savon'),
('Cadex'),
('Cahiers du CRILJ n° 10'),
('Cahiers du CRILJ n° 3'),
('Cahiers du CRILJ n° 4'),
('Cahiers du CRILJ n° 5'),
('Cahiers du CRILJ n° 7'),
('Cahiers du CRILJ n°8'),
('Calmann-Lévy'),
('Cambourakis'),
('Casterman'),
('Castor benjamin'),
('Castor poche'),
('Catalpas'),
('CCMDE'),
('Centre Georges Pompidou'),
('Cercle de la librairie'),
('Chan-Ok'),
('Cherche-midi'),
('Cheyne'),
('Cipango'),
('Circé'),
('Circonflexe'),
('CLAP Midi-Pyrénées'),
('Compagnie créative'),
('Cornélius'),
('Corps puce'),
('Courtes et longues'),
('Dapper'),
('De facto'),
('De la Martinière'),
('De la Martinière jeunesse'),
('Des Eléphants'),
('Des Idées et des Hommes'),
('Didier'),
('Didier jeunesse'),
('Dominique et cie'),
('Donner à voir'),
('Duculot Casterman'),
('Ecole Centre Montauban'),
('Ecole des loisirs'),
('Ed Corps Puce'),
('Ed Quart monde'),
('Ed. des Elephants'),
('Ed. des Elephants/Amnesty'),
('Ed. du Jasmin'),
('Edition des Monts'),
('Editions de la Balle'),
('Editions du Jasmin'),
('Education Nationale'),
('Elan vert'),
('Encore une fois'),
('ERES'),
('Escabelle'),
('Esperluète'),
('Etre'),
('Eyrolles'),
('Flammarion'),
('Flammarion jeunesse'),
('FLBLB'),
('Fleurus'),
('Flies France'),
('FOL de l''Ardèche'),
('Folio junior'),
('Folle avoine'),
('Fond. BNP'),
('France Loisirs'),
('Frimousse'),
('GAEL'),
('Galeri Minyatür'),
('Gallimard'),
('Gallimard jeunesse'),
('Gautier-Languereau'),
('Grandir'),
('Grasset'),
('Grasset jeunesse'),
('Gros textes'),
('Gründ'),
('Gulf Stream'),
('Hachette'),
('Hachette jeunesse'),
('Hatier'),
('Hatier jeunesse'),
('Hatier poche'),
('Helium'),
('Hélium'),
('Hoëbeke'),
('Hong Fei'),
('Hongfei'),
('Il était deux fois'),
('Jean-Pierre Delarge'),
('Kalandraka'),
('Kate''art'),
('Kid Pocket'),
('Kilowatt'),
('Kimane'),
('Krom Sakamapheap'),
('L''agrume'),
('L''art à la page'),
('L''Edune'),
('L''élan vert'),
('L''Harmattan'),
('L''Hydre'),
('L''idée bleue'),
('L''iroli'),
('La Bagnole'),
('La cabane sur le chien'),
('La compagnie Créative'),
('La Découverte poche'),
('La joie de lire'),
('La joie par les livres'),
('La maison est en carton'),
('La Martinière'),
('La Palissade'),
('La Pastèque'),
('La Renarde rouge'),
('La ville brûle'),
('Larousse'),
('Le baron perché'),
('Le cherche midi'),
('Le Dé bleu'),
('Le Farfadet bleu'),
('Le Genevrier'),
('Le Griffon bleu'),
('Le Jasmin'),
('Le Pommier'),
('Le port a jauni'),
('Le Rocher'),
('Le Sablier éditeur'),
('Le Sorbier'),
('Le Sorbier/Amnesty'),
('Le Trou de nez'),
('Le vengeur masqué'),
('Les 400 coups'),
('Les Arènes'),
('Les Cahiers de la Charte'),
('les éditions du mouton cerise'),
('Les fourmis rouges'),
('Les Grandes Personnes'),
('Les Grands Personnes'),
('Les p''tits bérets'),
('Les papareils'),
('Lirabelle'),
('Lirabelle/Amnesty'),
('Lis avec moi'),
('Lito'),
('Little Urban'),
('Lo Païs d''Enfance'),
('Magnard'),
('Magnard jeunesse'),
('Mango'),
('Mango jeunesse'),
('Margot'),
('Marsam'),
('MeMo'),
('Mic-Mac'),
('Michalon'),
('Michel Lafon'),
('Mijade'),
('Mila'),
('Mila éditions'),
('Milan'),
('Milan éducation'),
('Milan jeunesse'),
('Milan poche'),
('Millefeuilles'),
('Minedition'),
('Mini Syros'),
('Montreuil'),
('MØtus'),
('Mouton cerise'),
('Naïve'),
('Nathan'),
('Nathan jeunesse'),
('Nord-Sud'),
('Notari'),
('Nuinui'),
('OQO éditions'),
('Oskar'),
('Oskar jeunesse'),
('Où sont les enfants ?'),
('P''tit cairn'),
('P''tit Glénat'),
('Palette'),
('Paquet éditions'),
('Paris Bibliothèques'),
('Paris Musées'),
('Pastel'),
('PEMF'),
('PEMF ados'),
('Penguin books'),
('Père Fouettard'),
('Petit à petit'),
('Picquier jeunesse'),
('Pluie d''étoiles'),
('Pluie d’étoiles'),
('Plume d''Ocris'),
('Plume de carotte'),
('Poche'),
('Pocket'),
('Pocket jeunesse'),
('Pocket junior'),
('Pockett junior'),
('Point de suspension'),
('Points de Suspension'),
('Poisson soluble'),
('Pourquoi pas'),
('Présence production'),
('Privat'),
('Publisud'),
('Quart monde'),
('Quatre fleuves'),
('Québec'),
('Rageot'),
('Réciproques'),
('Réunion des musées nationaux'),
('Réunion musées nationaux'),
('Rêves bleus'),
('Ricochet'),
('Rivages'),
('Robert Laffont'),
('Rocher'),
('Rouegue'),
('Rouergue'),
('Rouge safran'),
('Rue du monde'),
('Ruisseaux d''Afrique'),
('Saltimbanque'),
('Sarbacane'),
('Sarbacane/Amnesty'),
('SEDRAP'),
('SEDRAP jeunesse'),
('Seghers'),
('Seghers jeune bilingue'),
('Seuil'),
('Seuil jeunesse'),
('Soc et foc'),
('Sorbier'),
('Souchon-Garrigue Hélène'),
('Stock'),
('Syros'),
('Syros Jeunesse'),
('Syros/Amnesty'),
('Table ronde'),
('Talents hauts'),
('Tapori'),
('Thierry Magnier'),
('Tourbillon'),
('Touret'),
('Usborne'),
('Vents d''ailleurs'),
('Verdier'),
('Versant Sud'),
('Vigot'),
('Vilo jeunesse'),
('Vives voix'),
('Walker Book'),
('Yanbow al Kitab'),
('Yomad'),
('Zone J.'),
('Zorba');


INSERT INTO Borrower (cardNo,first_name,last_name) VALUES
('0B172E000','Aairah`','Knowles'),
('04890AC02','Ada','White'),
('0BB740766','Aditi','Mccartney'),
('0F32DA143','Aine','Berg'),
('04DD13891','Alesha','Wang'),
('0DEAE09D5','Alessandra','Newman'),
('086B8F0CE','Aliesha','Conroy'),
('0C8C5F7BF','Allan','Mccann'),
('0F570CF13','Alyce','Ochoa'),
('0C74C811F','Amrita','Harrison'),
('0FFE29429','Aqsa','Hibbert'),
('0FE976CA4','Arfa','Wu'),
('04C660971','Arran','Vazquez'),
('0CDCFCBF5','Ashlee','Markham'),
('06007F30C','Asif','Wormald'),
('03CF64C09','Avi','Cowan'),
('0A2EC6E94','Ayra','Lynn'),
('0B6763DDE','Boris','Rawlings'),
('00D6D641F','Brad','Herrera'),
('026929948','Cadence','Fulton'),
('0B77BEF86','Callie','Herring'),
('0DDE8820A','Camille','North'),
('05AD5E18C','Carlton','Beard'),
('02DF71140','Catriona','Bradley'),
('0EE0EC06E','Chiara','Broughton'),
('0CF5465B6','Colby','Alvarado'),
('0D47DEA04','Connie','Conley'),
('025344111','Cruz','Jimenez'),
('09C19BEC6','Damien','Whitworth'),
('05164B5C9','Davey','O''Neill'),
('0F061F1C6','Dexter','Hill'),
('07B29A8EF','Dionne','Montgomery'),
('0B6F96CE8','Dora','Thornton'),
('062A82B50','Emilee','Reeves'),
('049B2625D','Emilija','Levine'),
('0561EF183','Evalyn','Ahmed'),
('068D5783D','Farhan','Owen'),
('05E396815','Fintan','Bowes'),
('0E9972B19','Fiza','Pollard'),
('03F9F30B8','Forrest','Stark'),
('0CE3CD29C','Geraldine','Hess'),
('009BA02DC','Gerrard','House'),
('081A4E317','Giorgio','Harrington'),
('0E1C83CF2','Graeme','Mcculloch'),
('064FC5B28','Haiden','Dale'),
('09DF2A31A','Hattie','Enriquez'),
('0E6A5774E','Heidi','Haynes'),
('06A8012C0','Herman','Glass'),
('082F21668','Huw','Nichols'),
('0F3AA2F52','Inez','Key'),
('08C966D81','Jake','Rosales'),
('085424977','Jan','Thorne'),
('081DEF607','Jenson','Young'),
('0DE86080B','Jobe','Underwood'),
('03EFEB2B0','Kajol','Ewing'),
('0807795DA','Kallum','Davey'),
('02B793358','Kamal','Power'),
('06805552F','Karam','Nash'),
('0D2FDFCFD','Karl','Reeve'),
('01F89615A','Karter','Molloy'),
('057413510','Keane','Sims'),
('00CE96154','Kelvin','Firth'),
('01AB7BB06','Kenya','Gaines'),
('0CF236C48','Kinga','Barrow'),
('099DB0A84','Lacie','Person'),
('0579D086B','Larry','Wiggins'),
('0F3FB962F','Louis','Trujillo'),
('06D5583D2','Maddox','Ramirez'),
('05BEE72AC','Marcia','Clay'),
('0326D315E','Marcos','Hinton'),
('0E64D8110','Marta','Schofield'),
('09B874547','Matthias','Giles'),
('0ACCF740A','Meghan','Walsh'),
('014A45D73','Menaal','Stokes'),
('066AF5970','Norman','Vaughn'),
('09C6FF3D9','Pharrell','Norman'),
('0AB71870C','Reef','Stephens'),
('0BDDB42A5','Rhia','Spooner'),
('081CE177B','Rhiana','Lake'),
('014845BF2','Roberto','Vargas'),
('06E674D74','Rosalind','Pritchard'),
('08B107947','Rowan','Connor'),
('05F749020','Roxanne','Langley'),
('09F8CC8AA','Sade','Davison'),
('0E9F0D9C0','Saoirse','Lynch'),
('091593802','Seb','Roche'),
('0CC65C358','Selena','Corrigan'),
('012550752','Steffan','Dejesus'),
('0715A8AA1','Storm','Woodcock'),
('0923D2091','Syed','Merrill'),
('0BA00BE84','Tai','Nielsen'),
('06BA87DBA','Teejay','Nolan'),
('0172E6FE9','Theodora','Torres'),
('08E0F1CA5','Umar','Trejo'),
('06D500BD8','Valentino','Maynard'),
('0EC0C4BAB','Valerie','Rogers'),
('05DFA45D4','Veronika','Case'),
('030D5490D','Vicky','Graham'),
('0E966B36D','Vihaan','Tapia'),
('087E982A4','Virginia','Rush');


INSERT INTO Library_branch (name,adress) VALUES
('Masina','C/ Masina'),
('Gombe','C/ Gombe');