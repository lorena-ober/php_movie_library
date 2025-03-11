SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administratori
-- ----------------------------

DROP TABLE IF EXISTS `administratori`;
CREATE TABLE `administratori` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `ime` VARCHAR(255) NOT NULL,
    `prezime` VARCHAR(255) NOT NULL, 
    `a_korisnicko_ime` VARCHAR(255) NOT NULL UNIQUE,
    `a_lozinka` VARCHAR(255) NOT NULL
);

-- ----------------------------
-- Records of administratori
-- ----------------------------
INSERT INTO `administratori` (`ime`, `prezime`, `a_korisnicko_ime`, `a_lozinka`) VALUES
('Lorena', 'Ober', 'lorena', 'admin1'),
('Drugi', 'Admin', 'admin2', 'admin2');

-- ----------------------------
-- Table structure for filmovi
-- ----------------------------
DROP TABLE IF EXISTS `filmovi`;
CREATE TABLE `filmovi` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `objavljeno` TINYINT NOT NULL,
    `naslov` VARCHAR(255) NOT NULL,
    `zanr` VARCHAR(255) NOT NULL,
    `redatelj` VARCHAR(255) NOT NULL,
    `metraza` INT NOT NULL,
    `godina_izdanja` INT NOT NULL,
    `glumci` TEXT NOT NULL,
    `radnja` TEXT NOT NULL
);

-- ----------------------------
-- Records of filmovi
-- ----------------------------
INSERT INTO `filmovi` (`objavljeno`, `naslov`, `zanr`, `redatelj`, `metraza`, `godina_izdanja`, `glumci`, `radnja`) VALUES 
(1, 'Inception', 'Znanstvena fantastika, drama','Christopher Nolan', 148, 2010, 'Leonardo DiCaprio, Joseph Gordon-Levitt, Cillian Murphy, Tom Hardy', 'Inception je znanstvenofantastični triler iz 2010. godine koji je režirao Christopher Nolan. Glavni lik, Dom Cobb (Leonardo DiCaprio), vješt je lopov specijaliziran za ekstrakciju informacija iz podsvijesti ljudi tijekom sna. Njegova jedinstvena sposobnost učinila ga je traženim u svijetu industrijske špijunaže, ali i bjeguncem koji je izgubio sve što voli.

Cobb dobiva priliku za iskupljenje kada mu bogati poduzetnik Saito (Ken Watanabe) ponudi naizgled nemoguć zadatak: umjesto krađe ideje, treba izvršiti "usađivanje" – umetanje ideje u podsvijest nasljednika poslovnog carstva, Roberta Fischera (Cillian Murphy). Ako uspije, Cobb će moći vratiti svoj stari život i ponovno biti sa svojom djecom.

Za ovu misiju Cobb okuplja tim stručnjaka: Arthura (Joseph Gordon-Levitt), svog pouzdanog partnera; Ariadne (Ellen Page), talentiranu arhitekticu koja dizajnira labirinte snova; Eamesa (Tom Hardy), prevaranta sposoban za promjenu identiteta unutar snova; i Yusufa (Dileep Rao), kemičara koji priprema posebne sedative za stabilizaciju višeslojnih snova.

Tijekom misije, tim se suočava s nizom izazova, uključujući nestabilnost snova i prijetnje iz podsvijesti meta. Dodatno, Cobb se bori s vlastitim demonima, posebno s projekcijom svoje pokojne supruge Mal (Marion Cotillard), koja prijeti ugroziti cijelu operaciju.

Film istražuje složene teme poput prirode stvarnosti, podsvijesti i krivnje, dok gledatelje vodi kroz višeslojne svjetove snova ispunjene napetim akcijskim scenama i vizualno impresivnim prizorima. Završava otvorenim pitanjem o granici između sna i jave, ostavljajući publiku da sama donese zaključak.'),

(1, 'Inglourious Basterds', 'Ratni, akcija, drama', 'Quentin Tarantino', 153, 2009, 'Brad Pitt, Christoph Walty, Mélanie Laurent, Daniel Brühl ,Diane Kruger', 'Radnja filma smještena je u okupiranu Francusku za vrijeme Drugog svjetskog rata. Shosanna Dreyfus, mlada Židovka, svjedoči brutalnom ubojstvu svoje obitelji od strane nacističkog pukovnika Hansa Lande. Shosanna uspijeva pobjeći i skriva se u Parizu, gdje postaje vlasnica malog kina. U međuvremenu, skupina američkih vojnika, poznata kao "Gadovi", predvođena karizmatičnim Aldom Raineom, provodi gerilske napade na nacističke vojnike, s ciljem sijanja straha u redovima Trećeg Reicha. Njihov zaštitni znak? Svakom preživjelom nacistu u čelo urežu svastiku.

Kada njemački ratni heroj Fredrick Zoller, fasciniran Shosannom, odluči u njezinom kinu organizirati premijeru nacističkog propagandnog filma, Shosanna smišlja plan za osvetu i uništenje nacističkog vodstva. U isto vrijeme, Gadovi, uz pomoć njemačke dvostruke agentice Bridget von Hammersmark, planiraju vlastiti atentat na Hitlera tijekom iste premijere.

Napetost raste dok se dvije složene zavjere za osvetu preklapaju, a sudbonosna noć u kinu kulminira eksplozivnim završetkom. Tarantinovi Nemilosrdni gadovi majstorski kombinira crni humor, neočekivane preokrete i briljantne dijaloge, ispreplićući povijest s fikcijom na nezaboravan način.' ),

(1, 'Scarface', 'Kriminalistički, drama', 'Brian De Palma', 170, 1983, 'Al Pacino, Michelle Pfeiffer, Steven Bauer, Elizabeth Mastrantonio', 'Radnja filma prati Tonyja Montanu, kubanskog izbjeglicu koji dolazi u Miami 1980-ih tijekom masovnog egzodusa iz Kube poznatog kao "Mariel Boatlift." Tony, zajedno sa svojim najboljim prijateljem Mannyjem, počinje raditi sitne poslove za lokalne kriminalce, no njegova ambicija, odlučnost i nemilosrdna priroda brzo ga izdvajaju iz mase. Njegov uspon započinje kada prihvati rizičan posao od narkobosa Franka Lopeza, što mu omogućuje ulazak u svijet organiziranog kriminala. Tony uskoro preuzima kontrolu nad Frankovim carstvom i postaje jedan od najmoćnijih narkokraljeva u Miamiju.

Iako mu bogatstvo i moć omogućuju luksuzan život, Tony postaje sve paranoičniji i nepovjerljiviji prema ljudima oko sebe, uključujući Mannyja i svoju ženu Elviru, čiji je brak sve napetiji. Njegova ambicija i nemogućnost da se zadovolji onim što ima dovode ga do donošenja nepromišljenih odluka koje ga stavljaju na nišan rivalskih kriminalaca i vlasti. Tonyjev svijet počinje se urušavati dok postaje opijen moći i kokainom, a njegovo carstvo biva sve ugroženije.

Klimaks filma donosi epski obračun u Tonyjevoj luksuznoj vili, gdje se suočava s posljedicama svog pohlepnog i nasilnog načina života. Scarface nije samo priča o usponu i padu kriminalca, već i o korupciji moći, destruktivnoj prirodi pohlepe te čovjekovoj težnji da nadmaši vlastite granice bez obzira na cijenu. Al Pacinova interpretacija Tonyja Montane ostavila je dubok trag u povijesti kinematografije, čineći ovaj film jednim od najikoničnijih u kriminalističkom žanru.' ),

(1, 'Catch Me If You Can', 'Biografski, kriminalistički, drama', 'Steven Spielberg', 141, 2002, 'Leonardo DiCaprio, Tom Hanks, Christopher Walken, Amy Adams, Martin Sheen', 'Film prati nevjerojatnu, ali istinitu priču o Franku Abagnaleu Jr., mladom prevarantu čije sposobnosti lažiranja, manipulacije i šarma ostavljaju trag širom svijeta. Frank, tinejdžer iz problematične obitelji, odlučuje pobjeći od kuće nakon što njegovi roditelji prolaze kroz bolan razvod. Ubrzo se pretvara u jednog od najuspješnijih prevaranata u povijesti, koristeći svoje genijalne talente kako bi lažirao diplome i identitete.

Frank se predstavlja kao pilot Pan Ame, što mu omogućuje da besplatno putuje svijetom i uživa u luksuznom životu, dok istovremeno falsificira milijune dolara u čekovima. Njegovi podvizi ne prestaju tu – uspijeva se lažno predstavljati kao liječnik i odvjetnik, bez formalnog obrazovanja, i uvijek izmiče vlastima zahvaljujući svom brzom razmišljanju i neustrašivoj prirodi. Dok Frank uživa u svom životu prepunom avantura, na tragu mu je uporni agent FBI-a, Carl Hanratty, specijaliziran za financijske zločine.

Carl, unatoč svim izazovima i frustracijama koje mu Frank prouzroči, razvija neobičnu vezu s njim, koju karakteriziraju poštovanje i fascinacija. Frankova motivacija nije samo pohlepa – duboko u sebi, on samo želi vratiti obiteljsku sreću koju je izgubio kao dijete. Njegov bijeg od stvarnosti završava kada konačno biva uhvaćen, no njegova genijalnost nije zanemarena – FBI mu pruža priliku da se iskupi radeći kao savjetnik za sprječavanje financijskih prijevara.

Catch Me If You Can je dirljiva i uzbudljiva priča o inteligenciji, prevari i odnosima. Tom Hanks i Leonardo DiCaprio donose briljantne izvedbe koje savršeno dočaravaju ovu jedinstvenu igru mačke i miša, dok nas film podsjeća da čak i najveći prevaranti mogu pronaći put do iskupljenja.' ),

(1, 'Interstellar', 'Znanstvena fantastika, drama, avantura', 'Christopher Nolan', 169, 2014, 'Matthew McConaughey, Anne Hathaway, Jessica Chastain, Michael Caine, Casey Affleck', 'Interstellar je epski znanstvenofantastični film koji istražuje duboke emocionalne i intelektualne teme, poput ljubavi, obitelji, opstanka i misterija svemira. Radnja prati Coopera, bivšeg NASA-inog pilota i farmera, koji mora donijeti gotovo nemoguću odluku: ostaviti svoju obitelj iza sebe kako bi se pridružio timu astronauta u misiji spašavanja čovječanstva. Zemlja postaje sve neprijateljskije mjesto za život, a posljednja nada leži u pronalasku novog planeta pogodnog za život. Cooper, zajedno s ekipom znanstvenika, kreće na putovanje kroz crvotočinu koja ih vodi u druge galaksije, gdje se suočavaju s nepoznatim svjetovima, gravitacijskim anomalijama i beskonačnim prostranstvima svemira.

Dok se Cooper bori s nemogućim odlukama, poput povratka kući ili spašavanja ljudske vrste, film dotiče univerzalne ljudske emocije – očaj, nadu i povezanost. Istovremeno, kroz preciznu znanstvenu podlogu o gravitaciji, relativnosti i vremenskim paradoksima, Interstellar nudi duboko zadivljujuću priču koja pomiče granice ljudskog razmišljanja. Glazba Hansa Zimmera, spektakularni vizualni efekti i emocionalne izvedbe glavnih glumaca čine ovaj film istinskim remek-djelom.' ),

(0, 'The Pianist', 'Biografski, povijesni, drama', 'Roman Polanski', 150, 2002, 'Adrien Brody, Thomas Kretschmann, Frank Finlay, Maureen Lipman', 'The Pianist je potresna i duboko emocionalna priča temeljena na memoarima Władysława Szpilmana, renomiranog poljskog pijanista židovskog podrijetla, koji je preživio strahote Drugog svjetskog rata u Varšavi. Film počinje prikazom njegovog harmoničnog života ispunjenog glazbom i obiteljskom srećom, no taj skladni svijet urušava se dolaskom nacističke okupacije. Kako se okrutna stvarnost rata i progona širi, Szpilmanova obitelj biva deportirana u koncentracijske logore, dok on, zahvaljujući slučajnim okolnostima, uspijeva izbjeći istu sudbinu.

Ostaje sam u razorenom gradu, izložen gladi, hladnoći i stalnoj prijetnji smrti, dok se skriva u napuštenim zgradama i ruševinama Varšave. Njegovo preživljavanje ovisi o nesebičnoj pomoći nekoliko prijatelja, ali i o njegovoj nevjerojatnoj snalažljivosti i odlučnosti. Ipak, njegovu egzistenciju obilježava glazba, koja mu ne samo daje nadu nego i služi kao simbol ljudskosti u brutalnim okolnostima. U jednoj od najdirljivijih scena filma, Szpilman svira klavir pred njemačkim časnikom, koji ga, umjesto da ga preda vlastima, odluči spasiti.

Roman Polanski, i sam preživjeli holokausta, donosi snažno i autentično viđenje ljudske patnje i otpornosti, istražujući pitanje preživljavanja, empatije i snage umjetnosti. Izvanredna izvedba Adriena Brodyja, koja mu je donijela Oscara za najboljeg glumca, dodatno pojačava emocionalni naboj filma. The Pianist nije samo priča o opstanku; to je univerzalna priča o pobjedi ljudskog duha nad najtežim nedaćama, podsjetnik na važnost sjećanja i duboki hommage snazi glazbe u najtamnijim vremenima.' ),

(1, 'Pulp Fiction', 'kriminalistički, drama', 'Quentin Tarantino', 154, 1994, 'John Travolta, Uma Thurman, Samuel L. Jackson, Bruce Willis, Ving Rhames', 'Pulp Fiction je kultni film Quentina Tarantina koji je revolucionirao modernu kinematografiju svojim nelinearnim pripovijedanjem, nezaboravnim dijalozima i jedinstvenim spojem crnog humora, nasilja i pop-kulture. Film se sastoji od tri isprepletene priče koje istražuju živote gangstera, boksača i raznih likova s rubova društva u Los Angelesu.

Priča prati Vincenta Vegu i Julesa Winnfielda, dvojicu profesionalnih ubojica u službi moćnog kriminalca Marsellusa Wallacea. Njihova rutina ispunjena filozofskim raspravama i brutalnim obračunima dobiva neočekivane zaokrete, posebice kada Vincent dobije zadatak izvesti Marsellusovu suprugu Miju na večeru. U međuvremenu, bivši boksač Butch Coolidge planira prevariti Marsellusa nakon dogovorenog meča, što vodi do bizarnog i opasnog sukoba.

Jedna od najpoznatijih scena filma uključuje legendarnu plesnu scenu između Johna Travolte i Ume Thurman, dok Tarantinova sklonost neočekivanim obratima doseže vrhunac u trenucima poput Julesovog prosvjetljenja i nezaboravnog monologa o "pravednom čovjeku."

Svojom višeslojnom naracijom i briljantno napisanim likovima, Pulp Fiction redefinira kriminalistički žanr, dok Tarantinov zaštitni znak – promišljeno korištenje glazbe – dodatno naglašava ključne trenutke filma. Uz izvrsne glumačke izvedbe i hrabru režiju, Pulp Fiction nije samo priča o kriminalu, već duboko promišljanje o slučajnosti, iskupljenju i ljudskoj naravi. Film je postao instant klasik, osvojio Zlatnu palmu u Cannesu i zauvijek ostao obilježje pop-kulture.' ),

(0, 'The Shining', 'Horor, triler', 'Stanley Kubrick', 146, 1980, 'Jack Nicholson, Shelley Duvall, Danny Lloyd, Scatman Crothers', 'The Shining je remek-djelo psihološkog horora Stanleyja Kubricka, inspirirano romanom Stephena Kinga. Film prati priču Jacka Torrancea, ambicioznog pisca koji prihvaća posao čuvara izoliranog hotela Overlook tijekom zime. Jack se u hotel seli sa suprugom Wendy i sinom Dannyjem, koji ima misteriozne psihičke sposobnosti poznate kao "sjaj" (eng. shining).

Izolacija i zlokobna povijest hotela ubrzo počinju narušavati Jackov razum, dok Danny počinje imati uznemirujuće vizije prošlih zločina i nadnaravnih pojava. Kako zima odmiče, Jack postaje sve opasniji, a Wendy i Danny moraju pronaći način da pobjegnu prije nego što postanu žrtve njegovog nasilnog ludila.

Kubrickova briljantna režija, nezaboravna gluma Jacka Nicholsona i jeziva atmosfera hotela čine The Shining jednim od najutjecajnijih horor filmova svih vremena. Kultne scene ovoga filma postale su simboli filmske povijesti. Film istražuje teme izolacije, obiteljske dinamike i utjecaja nadnaravnog na ljudsku psihu, dok se vizualna estetika i napeta glazba savršeno stapaju u tjeskobnu cjelinu. The Shining ostavlja trajni dojam na gledatelje, ostavljajući prostor za beskrajne interpretacije i analize.' ),

(1, 'Blade Runner 2049', 'Znanstvena fantastika, triler', 'Denis Villeneuve', 164, 2017, 'Ryan Gosling, Harrison Ford, Ana de Armas, Jared Leto, Robin Wright', 'Blade Runner 2049 je nastavak kultnog filma Ridleyja Scotta iz 1982. godine, koji proširuje bogati svijet distopijske budućnosti. Radnja je smještena u 2049. godinu, gdje novi model replikanta, K, radi kao "blade runner" – lovac na pobunjene stare modele replikanta. Tijekom rutinske misije, K otkriva šokantnu tajnu koja bi mogla preoblikovati budućnost odnosa između ljudi i umjetnih bića.

Novo istraživanje vodi ga do Ricka Deckarda, bivšeg blade runnera koji je nestao prije nekoliko desetljeća. Njihov susret otkriva slojevite odnose između stvorenih i stvaratelja, dok se postavlja pitanje što znači biti čovjek.

Film je vizualno spektakularan, s nevjerojatnim kinematografskim radom Rogera Deakinsa koji prikazuje tmurnu, ali fascinantnu viziju budućnosti. Denis Villeneuve vješto kombinira filozofska pitanja, emotivnu priču i napetu atmosferu, dok gluma Ryana Goslinga i Harrisona Forda donosi dubinu likovima. Blade Runner 2049 nije samo tehničko čudo, već i introspektivan film koji istražuje identitet, moral i ljudsku prirodu, čineći ga dostojnim nasljednikom originala.' ),

(1, 'Back to the Future', 'Znanstvena fantastika, avantura, komedija', 'Robert Zemeckis', 116, 1985, 'Michael J. Fox, Christopher Lloyd, Lea Thompson, Crispin Glover', 'Back to the Future je kultni znanstvenofantastični film koji je redefinirao avanturistički žanr. Radnja prati Martyja McFlyja, običnog tinejdžera koji slučajno završi u prošlosti zahvaljujući vremenskoj mašini koju je izumio ekscentrični znanstvenik, dr. Emmett Brown.

Marty se vraća u 1955. godinu, gdje se slučajno uplete u ljubavni život svojih roditelja. Njegova prisutnost u prošlosti ugrožava vlastito postojanje jer njegov otac George i majka Lorraine možda nikada neće postati par. Uz pomoć dr. Browna iz prošlosti, Marty mora popraviti nastali kaos, spojiti roditelje i vratiti se u budućnost prije nego što bude prekasno.

Uz briljantnu kemiju između Michaela J. Foxa i Christophera Lloyda, film donosi spoj humora, napetosti i nostalgije. Kultne scene poput Martyjevog nastupa i DeLoreana koji putuje kroz vrijeme na 88 milja na sat postale su dio popularne kulture. Back to the Future je priča o obitelji, prijateljstvu i promjenama koje oblikuju naš život, a njegovo bezvremensko šarmantno pripovijedanje čini ga jednim od najomiljenijih filmova svih vremena.' ),

(0, 'Back to the Future II', 'Znanstvena fantastika, avantura, komedija', 'Robert Zemeckis', 108, 1989, 'Michael J. Fox, Christopher Lloyd, Lea Thompson, Thomas F. Wilson', 'U nastavku omiljenog filma, Back to the Future Part II vodi Martyja i dr. Browna u 2015. godinu kako bi spriječili katastrofu u budućnosti Martyjeve obitelji. Međutim, njihova intervencija uzrokuje neočekivane promjene koje stvaraju alternativnu stvarnost u njihovoj sadašnjosti.

Marty i Doc se vraćaju u prošlost kako bi popravili vremensku liniju i spriječili zlokobne planove Biffa Tannena, njihovog vječnog neprijatelja. Film istražuje fascinantne ideje o posljedicama putovanja kroz vrijeme i kako male promjene mogu imati ogromne posljedice.

S još bržom radnjom, kompleksnijim narativom i nezaboravnim scenama poput hoverboard utrke, ovaj nastavak dodatno učvršćuje status serijala kao kulturnog fenomena. Robert Zemeckis majstorski spaja humor, napetost i inovativne specijalne efekte, donoseći zabavan i inteligentan film koji ostavlja gledatelje zadivljenima.' ),

(0, 'Back to the Future III', 'Znanstvena fantastika, avantura, komedija', 'Robert Zemeckis', 118, 1990, 'Michael J. Fox, Christopher Lloyd, Mary Steenburgen, Thomas F. Wilson', 'U posljednjem dijelu trilogije, Back to the Future Part III donosi jedinstvenu kombinaciju znanstvene fantastike i kaubojskog vesterna. Radnja se odvija 1885. godine, gdje Marty putuje kako bi spasio dr. Browna koji je slučajno zaglavio u Divljem zapadu.

Dok pokušava pronaći način za povratak u budućnost, Marty se suočava s opasnostima starog Zapada, uključujući zlog Bufforda "Mad Dog" Tannena. U međuvremenu, dr. Brown pronalazi ljubav u liku učiteljice Clare Clayton, što dodatno komplicira njihovu misiju.

Film donosi spektakularnu završnicu serijala s nevjerojatnim trenucima napetosti, poput završne scene vlaka koji juri kroz vrijeme. Back to the Future Part III pruža emocionalnu dubinu likovima, posebno dr. Brownu, dok se pozdravlja s obožavateljima trilogije uz šarmantan i zadovoljavajući završetak.' );

-- ----------------------------
-- Table structure for korisnici
-- ----------------------------
DROP TABLE IF EXISTS `korisnici`;
CREATE TABLE `korisnici` (
    `id` INT AUTO_INCREMENT PRIMARY KEY, -- ID korisnika
    `ime` VARCHAR(255) NOT NULL,         -- ime korisnika
    `prezime` VARCHAR(255) NOT NULL,     -- prezime korisnika
    `k_korisnicko_ime` VARCHAR(255) NOT NULL UNIQUE, -- korisničko ime 
    `k_lozinka` VARCHAR(255) NOT NULL   

);

-- ----------------------------
-- Records of korisnici
-- ----------------------------
INSERT INTO `korisnici` (`ime`, `prezime`, `k_korisnicko_ime`, `k_lozinka`) VALUES
('Ana', 'Anić', 'ana_banana', 'ana123'),
('Ivan', 'Ivić', 'ivic.ivan', 'ivanivic'),
('Pero', 'Perić', 'pero123', 'peroperic123');

-- ----------------------------
-- Table structure for favoriti
-- ----------------------------
DROP TABLE IF EXISTS `favoriti`;
CREATE TABLE `favoriti` (

    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `korisnik_id` INT NOT NULL,         -- ID korisnika (povezan s tablicom `korisnici`)
    `film_id` INT NOT NULL,             -- ID filma (povezan s tablicom `filmovi`)
    `datum` DATE NOT NULL,
    FOREIGN KEY (`korisnik_id`) REFERENCES `korisnici`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`film_id`) REFERENCES `filmovi`(`id`) ON DELETE CASCADE

);

INSERT INTO `favoriti` (`korisnik_id`, `film_id`, `datum`) VALUES
(1, 2, '2025-01-01'),
(2, 3, '2025-01-02');

-- ----------------------------
-- Table structure for recenzije
-- ----------------------------
DROP TABLE IF EXISTS `recenzije`;
CREATE TABLE `recenzije` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `korisnik_id` INT NOT NULL,          -- ID korisnika koji je napisao recenziju
    `film_id` INT NOT NULL,              -- ID filma na koji se odnosi recenzija
    `ocjena` TINYINT NOT NULL,
    `tekst` TEXT,
    `datum` DATE NOT NULL,
    FOREIGN KEY (`korisnik_id`) REFERENCES `korisnici`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`film_id`) REFERENCES `filmovi`(`id`) ON DELETE CASCADE
);

INSERT INTO `recenzije` (`korisnik_id`, `film_id`, `ocjena`, `tekst`, `datum`) VALUES
(1, 1, 5, 'Ovaj film mi je promijenio život! Nevjerojatna priča i gluma.', '2025-01-01'),
(2, 2, 4, 'Vrlo zanimljiv i inovativan pristup priči o Drugom svjetskom ratu.', '2025-01-02'),
(3, 3, 5, 'Klasična priča o usponu i padu kriminalca. Al Pacino je briljantan!', '2025-01-03');


SET FOREIGN_KEY_CHECKS = 1;





