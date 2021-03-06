import 'dart:convert';

class IlService {
  List<Il> get iller {
    List iller = jsonDecode(_ilDatas) as List;
    return iller.map((e) => Il.fromJson(e)).toList();
  }

  List<Il> ilAra(String query) {
    return iller
        .where(
            (element) => element.il.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  List<String> ilceler(int plakaKodu) {
    int index = iller.indexWhere((element) => element.plaka == plakaKodu);
    if (index != -1) {
      return iller[index].ilceleri;
    }
    return [];
  }
}

class Il {
  String il;
  int plaka;
  List<String> ilceleri;

  Il({required this.il, required this.plaka, required this.ilceleri});

  factory Il.fromJson(Map<String, dynamic> json) {
    return Il(
      il: json["il"],
      ilceleri: json['ilceleri'].cast<String>(),
      plaka: json["plaka"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['il'] = il;
    data['plaka'] = plaka;
    data['ilceleri'] = ilceleri;
    return data;
  }
}

class BransServices {
  List<Brans> get branslar {
    List branslar = jsonDecode(_bransData) as List;
    return branslar.map((e) => Brans.fromJson(e)).toList();
  }

  List<Brans> bransAra(String query) {
    return branslar
        .where((aranan) =>
            aranan.brans.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  List<String> mevki(int seriNo) {
    int index = branslar.indexWhere((aranan) => aranan.no == seriNo);
    if (index != -1) {
      return branslar[index].mevki;
    }
    return [];
  }
}

class Brans {
  String brans;
  int no;
  List<String> mevki;

  Brans({required this.brans, required this.no, required this.mevki});

  factory Brans.fromJson(Map<String, dynamic> json) {
    return Brans(
      brans: json["brans"],
      mevki: json['mevki'].cast<String>(),
      no: json["no"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['brans'] = brans;
    data['no'] = no;
    data['mevki'] = mevki;
    return data;
  }
}

const String _ilDatas = """[
 
  {
    "il": "Adana",
    "plaka": 1,
    "ilceleri": [
      "Alada??",
      "Ceyhan",
      "??ukurova",
      "Feke",
      "??mamo??lu",
      "Karaisal??",
      "Karata??",
      "Kozan",
      "Pozant??",
      "Saimbeyli",
      "Sar????am",
      "Seyhan",
      "Tufanbeyli",
      "Yumurtal??k",
      "Y??re??ir"
    ]
  },
  {
    "il": "Ad??yaman",
    "plaka": 2,
    "ilceleri": [
      "Besni",
      "??elikhan",
      "Gerger",
      "G??lba????",
      "Kahta",
      "Merkez",
      "Samsat",
      "Sincik",
      "Tut"
    ]
  },
  {
    "il": "Afyonkarahisar",
    "plaka": 3,
    "ilceleri": [
      "Ba??mak????",
      "Bayat",
      "Bolvadin",
      "??ay",
      "??obanlar",
      "Dazk??r??",
      "Dinar",
      "Emirda??",
      "Evciler",
      "Hocalar",
      "??hsaniye",
      "??scehisar",
      "K??z??l??ren",
      "Merkez",
      "Sand??kl??",
      "Sinanpa??a",
      "Sultanda????",
      "??uhut"
    ]
  },
  {
    "il": "A??r??",
    "plaka": 4,
    "ilceleri": [
      "Diyadin",
      "Do??ubayaz??t",
      "Ele??kirt",
      "Hamur",
      "Merkez",
      "Patnos",
      "Ta??l????ay",
      "Tutak"
    ]
  },
  {
    "il": "Amasya",
    "plaka": 5,
    "ilceleri": [
      "G??yn??cek",
      "G??m????hac??k??y",
      "Hamam??z??",
      "Merkez",
      "Merzifon",
      "Suluova",
      "Ta??ova"
    ]
  },
  {
    "il": "Ankara",
    "plaka": 6,
    "ilceleri": [
      "Alt??nda??",
      "Aya??",
      "Bala",
      "Beypazar??",
      "??aml??dere",
      "??ankaya",
      "??ubuk",
      "Elmada??",
      "G??d??l",
      "Haymana",
      "Kalecik",
      "K??z??lcahamam",
      "Nall??han",
      "Polatl??",
      "??erefliko??hisar",
      "Yenimahalle",
      "G??lba????",
      "Ke??i??ren",
      "Mamak",
      "Sincan",
      "Kazan",
      "Akyurt",
      "Etimesgut",
      "Evren",
      "Pursaklar"
    ]
  },
  {
    "il": "Antalya",
    "plaka": 7,
    "ilceleri": [
      "Akseki",
      "Alanya",
      "Elmal??",
      "Finike",
      "Gazipa??a",
      "G??ndo??mu??",
      "Ka??",
      "Korkuteli",
      "Kumluca",
      "Manavgat",
      "Serik",
      "Demre",
      "??brad??",
      "Kemer",
      "Aksu",
      "D????emealt??",
      "Kepez",
      "Konyaalt??",
      "Muratpa??a"
    ]
  },
  {
    "il": "Artvin",
    "plaka": 8,
    "ilceleri": [
      "Ardanu??",
      "Arhavi",
      "Merkez",
      "Bor??ka",
      "Hopa",
      "??av??at",
      "Yusufeli",
      "Murgul"
    ]
  },
  {
    "il": "Ayd??n",
    "plaka": 9,
    "ilceleri": [
      "Merkez",
      "Bozdo??an",
      "Efeler",
      "??ine",
      "Germencik",
      "Karacasu",
      "Ko??arl??",
      "Ku??adas??",
      "Kuyucak",
      "Nazilli",
      "S??ke",
      "Sultanhisar",
      "Yenipazar",
      "Buharkent",
      "??ncirliova",
      "Karpuzlu",
      "K????k",
      "Didim"
    ]
  },
  {
    "il": "Bal??kesir",
    "plaka": 10,
    "ilceleri": [
      "Alt??eyl??l",
      "Ayval??k",
      "Merkez",
      "Balya",
      "Band??rma",
      "Bigadi??",
      "Burhaniye",
      "Dursunbey",
      "Edremit",
      "Erdek",
      "G??nen",
      "Havran",
      "??vrindi",
      "Karesi",
      "Kepsut",
      "Manyas",
      "Sava??tepe",
      "S??nd??rg??",
      "G??me??",
      "Susurluk",
      "Marmara"
    ]
  },
  {
    "il": "Bilecik",
    "plaka": 11,
    "ilceleri": [
      "Merkez",
      "Boz??y??k",
      "G??lpazar??",
      "Osmaneli",
      "Pazaryeri",
      "S??????t",
      "Yenipazar",
      "??nhisar"
    ]
  },
  {
    "il": "Bing??l",
    "plaka": 12,
    "ilceleri": [
      "Merkez",
      "Gen??",
      "Karl??ova",
      "Ki????",
      "Solhan",
      "Adakl??",
      "Yayladere",
      "Yedisu"
    ]
  },
  {
    "il": "Bitlis",
    "plaka": 13,
    "ilceleri": [
      "Adilcevaz",
      "Ahlat",
      "Merkez",
      "Hizan",
      "Mutki",
      "Tatvan",
      "G??roymak"
    ]
  },
  {
    "il": "Bolu",
    "plaka": 14,
    "ilceleri": [
      "Merkez",
      "Gerede",
      "G??yn??k",
      "K??br??sc??k",
      "Mengen",
      "Mudurnu",
      "Seben",
      "D??rtdivan",
      "Yeni??a??a"
    ]
  },
  {
    "il": "Burdur",
    "plaka": 15,
    "ilceleri": [
      "A??lasun",
      "Bucak",
      "Merkez",
      "G??lhisar",
      "Tefenni",
      "Ye??ilova",
      "Karamanl??",
      "Kemer",
      "Alt??nyayla",
      "??avd??r",
      "??eltik??i"
    ]
  },
  {
    "il": "Bursa",
    "plaka": 16,
    "ilceleri": [
      "Gemlik",
      "??neg??l",
      "??znik",
      "Karacabey",
      "Keles",
      "Mudanya",
      "Mustafakemalpa??a",
      "Orhaneli",
      "Orhangazi",
      "Yeni??ehir",
      "B??y??korhan",
      "Harmanc??k",
      "Nil??fer",
      "Osmangazi",
      "Y??ld??r??m",
      "G??rsu",
      "Kestel"
    ]
  },
  {
    "il": "??anakkale",
    "plaka": 17,
    "ilceleri": [
      "Ayvac??k",
      "Bayrami??",
      "Biga",
      "Bozcaada",
      "??an",
      "Merkez",
      "Eceabat",
      "Ezine",
      "Gelibolu",
      "G??k??eada",
      "Lapseki",
      "Yenice"
    ]
  },
  {
    "il": "??ank??r??",
    "plaka": 18,
    "ilceleri": [
      "Merkez",
      "??erke??",
      "Eldivan",
      "Ilgaz",
      "Kur??unlu",
      "Orta",
      "??aban??z??",
      "Yaprakl??",
      "Atkaracalar",
      "K??z??l??rmak",
      "Bayram??ren",
      "Korgun"
    ]
  },
  {
    "il": "??orum",
    "plaka": 19,
    "ilceleri": [
      "Alaca",
      "Bayat",
      "Merkez",
      "??skilip",
      "Karg??",
      "Mecit??z??",
      "Ortak??y",
      "Osmanc??k",
      "Sungurlu",
      "Bo??azkale",
      "U??urluda??",
      "Dodurga",
      "La??in",
      "O??uzlar"
    ]
  },
  {
    "il": "Denizli",
    "plaka": 20,
    "ilceleri": [
      "Ac??payam",
      "Buldan",
      "??al",
      "??ameli",
      "??ardak",
      "??ivril",
      "Merkez",
      "Merkezefendi",
      "Pamukkale",
      "G??ney",
      "Kale",
      "Sarayk??y",
      "Tavas",
      "Babada??",
      "Bekilli",
      "Honaz",
      "Serinhisar",
      "Baklan",
      "Beya??a??",
      "Bozkurt"
    ]
  },
  {
    "il": "Diyarbak??r",
    "plaka": 21,
    "ilceleri": [
      "Kocak??y",
      "??ermik",
      "????nar",
      "????ng????",
      "Dicle",
      "Ergani",
      "Hani",
      "Hazro",
      "Kulp",
      "Lice",
      "Silvan",
      "E??il",
      "Ba??lar",
      "Kayap??nar",
      "Sur",
      "Yeni??ehir",
      "Bismil"
    ]
  },
  {
    "il": "Edirne",
    "plaka": 22,
    "ilceleri": [
      "Merkez",
      "Enez",
      "Havsa",
      "??psala",
      "Ke??an",
      "Lalapa??a",
      "Meri??",
      "Uzunk??pr??",
      "S??lo??lu"
    ]
  },
  {
    "il": "Elaz????",
    "plaka": 23,
    "ilceleri": [
      "A????n",
      "Baskil",
      "Merkez",
      "Karako??an",
      "Keban",
      "Maden",
      "Palu",
      "Sivrice",
      "Ar??cak",
      "Kovanc??lar",
      "Alacakaya"
    ]
  },
  {
    "il": "Erzincan",
    "plaka": 24,
    "ilceleri": [
      "??ay??rl??",
      "Merkez",
      "??li??",
      "Kemah",
      "Kemaliye",
      "Refahiye",
      "Tercan",
      "??z??ml??",
      "Otlukbeli"
    ]
  },
  {
    "il": "Erzurum",
    "plaka": 25,
    "ilceleri": [
      "A??kale",
      "??at",
      "H??n??s",
      "Horasan",
      "??spir",
      "Karayaz??",
      "Narman",
      "Oltu",
      "Olur",
      "Pasinler",
      "??enkaya",
      "Tekman",
      "Tortum",
      "Kara??oban",
      "Uzundere",
      "Pazaryolu",
      "K??pr??k??y",
      "Paland??ken",
      "Yakutiye",
      "Aziziye"
    ]
  },
  {
    "il": "Eski??ehir",
    "plaka": 26,
    "ilceleri": [
      "??ifteler",
      "Mahmudiye",
      "Mihal????????k",
      "Sar??cakaya",
      "Seyitgazi",
      "Sivrihisar",
      "Alpu",
      "Beylikova",
      "??n??n??",
      "G??ny??z??",
      "Han",
      "Mihalgazi",
      "Odunpazar??",
      "Tepeba????"
    ]
  },
  {
    "il": "Gaziantep",
    "plaka": 27,
    "ilceleri": [
      "Araban",
      "??slahiye",
      "Nizip",
      "O??uzeli",
      "Yavuzeli",
      "??ahinbey",
      "??ehitkamil",
      "Karkam????",
      "Nurda????"
    ]
  },
  {
    "il": "Giresun",
    "plaka": 28,
    "ilceleri": [
      "Alucra",
      "Bulancak",
      "Dereli",
      "Espiye",
      "Eynesil",
      "Merkez",
      "G??rele",
      "Ke??ap",
      "??ebinkarahisar",
      "Tirebolu",
      "Piraziz",
      "Ya??l??dere",
      "??amoluk",
      "??anak????",
      "Do??ankent",
      "G??ce"
    ]
  },
  {
    "il": "G??m????hane",
    "plaka": 29,
    "ilceleri": [
      "Merkez",
      "Kelkit",
      "??iran",
      "Torul",
      "K??se",
      "K??rt??n"
    ]
  },
  {
    "il": "Hakkari",
    "plaka": 30,
    "ilceleri": [
      "??ukurca",
      "Merkez",
      "??emdinli",
      "Y??ksekova"
    ]
  },
  {
    "il": "Hatay",
    "plaka": 31,
    "ilceleri": [
      "Alt??n??z??",
      "Arsuz",
      "Defne",
      "D??rtyol",
      "Hassa",
      "Antakya",
      "??skenderun",
      "K??r??khan",
      "Payas",
      "Reyhanl??",
      "Samanda??",
      "Yaylada????",
      "Erzin",
      "Belen",
      "Kumlu"
    ]
  },
  {
    "il": "Isparta",
    "plaka": 32,
    "ilceleri": [
      "Atabey",
      "E??irdir",
      "Gelendost",
      "Merkez",
      "Ke??iborlu",
      "Senirkent",
      "S??t????ler",
      "??arkikaraa??a??",
      "Uluborlu",
      "Yalva??",
      "Aksu",
      "G??nen",
      "Yeni??arbademli"
    ]
  },
  {
    "il": "Mersin",
    "plaka": 33,
    "ilceleri": [
      "Anamur",
      "Erdemli",
      "G??lnar",
      "Mut",
      "Silifke",
      "Tarsus",
      "Ayd??nc??k",
      "Bozyaz??",
      "??aml??yayla",
      "Akdeniz",
      "Mezitli",
      "Toroslar",
      "Yeni??ehir"
    ]
  },
  {
    "il": "??stanbul",
    "plaka": 34,
    "ilceleri": [
      "Adalar",
      "Bak??rk??y",
      "Be??ikta??",
      "Beykoz",
      "Beyo??lu",
      "??atalca",
      "Ey??p",
      "Fatih",
      "Gaziosmanpa??a",
      "Kad??k??y",
      "Kartal",
      "Sar??yer",
      "Silivri",
      "??ile",
      "??i??li",
      "??sk??dar",
      "Zeytinburnu",
      "B??y??k??ekmece",
      "Ka????thane",
      "K??????k??ekmece",
      "Pendik",
      "??mraniye",
      "Bayrampa??a",
      "Avc??lar",
      "Ba??c??lar",
      "Bah??elievler",
      "G??ng??ren",
      "Maltepe",
      "Sultanbeyli",
      "Tuzla",
      "Esenler",
      "Arnavutk??y",
      "Ata??ehir",
      "Ba??ak??ehir",
      "Beylikd??z??",
      "??ekmek??y",
      "Esenyurt",
      "Sancaktepe",
      "Sultangazi"
    ]
  },
  {
    "il": "??zmir",
    "plaka": 35,
    "ilceleri": [
      "Alia??a",
      "Bay??nd??r",
      "Bergama",
      "Bornova",
      "??e??me",
      "Dikili",
      "Fo??a",
      "Karaburun",
      "Kar????yaka",
      "Kemalpa??a",
      "K??n??k",
      "Kiraz",
      "Menemen",
      "??demi??",
      "Seferihisar",
      "Sel??uk",
      "Tire",
      "Torbal??",
      "Urla",
      "Beyda??",
      "Buca",
      "Konak",
      "Menderes",
      "Bal??ova",
      "??i??li",
      "Gaziemir",
      "Narl??dere",
      "G??zelbah??e",
      "Bayrakl??",
      "Karaba??lar"
    ]
  },
  {
    "il": "Kars",
    "plaka": 36,
    "ilceleri": [
      "Arpa??ay",
      "Digor",
      "Ka????zman",
      "Merkez",
      "Sar??kam????",
      "Selim",
      "Susuz",
      "Akyaka"
    ]
  },
  {
    "il": "Kastamonu",
    "plaka": 37,
    "ilceleri": [
      "Abana",
      "Ara??",
      "Azdavay",
      "Bozkurt",
      "Cide",
      "??atalzeytin",
      "Daday",
      "Devrekani",
      "??nebolu",
      "Merkez",
      "K??re",
      "Ta??k??pr??",
      "Tosya",
      "??hsangazi",
      "P??narba????",
      "??enpazar",
      "A??l??",
      "Do??anyurt",
      "Han??n??",
      "Seydiler"
    ]
  },
  {
    "il": "Kayseri",
    "plaka": 38,
    "ilceleri": [
      "B??nyan",
      "Develi",
      "Felahiye",
      "??ncesu",
      "P??narba????",
      "Sar??o??lan",
      "Sar??z",
      "Tomarza",
      "Yahyal??",
      "Ye??ilhisar",
      "Akk????la",
      "Talas",
      "Kocasinan",
      "Melikgazi",
      "Hac??lar",
      "??zvatan"
    ]
  },
  {
    "il": "K??rklareli",
    "plaka": 39,
    "ilceleri": [
      "Babaeski",
      "Demirk??y",
      "Merkez",
      "Kof??az",
      "L??leburgaz",
      "Pehlivank??y",
      "P??narhisar",
      "Vize"
    ]
  },
  {
    "il": "K??r??ehir",
    "plaka": 40,
    "ilceleri": [
      "??i??ekda????",
      "Kaman",
      "Merkez",
      "Mucur",
      "Akp??nar",
      "Ak??akent",
      "Boztepe"
    ]
  },
  {
    "il": "Kocaeli",
    "plaka": 41,
    "ilceleri": [
      "Gebze",
      "G??lc??k",
      "Kand??ra",
      "Karam??rsel",
      "K??rfez",
      "Derince",
      "Ba??iskele",
      "??ay??rova",
      "Dar??ca",
      "Dilovas??",
      "??zmit",
      "Kartepe"
    ]
  },
  {
    "il": "Konya",
    "plaka": 42,
    "ilceleri": [
      "Ak??ehir",
      "Bey??ehir",
      "Bozk??r",
      "Cihanbeyli",
      "??umra",
      "Do??anhisar",
      "Ere??li",
      "Hadim",
      "Ilg??n",
      "Kad??nhan??",
      "Karap??nar",
      "Kulu",
      "Saray??n??",
      "Seydi??ehir",
      "Yunak",
      "Ak??ren",
      "Alt??nekin",
      "Derebucak",
      "H??y??k",
      "Karatay",
      "Meram",
      "Sel??uklu",
      "Ta??kent",
      "Ah??rl??",
      "??eltik",
      "Derbent",
      "Emirgazi",
      "G??neys??n??r",
      "Halkap??nar",
      "Tuzluk??u",
      "Yal??h??y??k"
    ]
  },
  {
    "il": "K??tahya",
    "plaka": 43,
    "ilceleri": [
      "Alt??nta??",
      "Domani??",
      "Emet",
      "Gediz",
      "Merkez",
      "Simav",
      "Tav??anl??",
      "Aslanapa",
      "Dumlup??nar",
      "Hisarc??k",
      "??aphane",
      "??avdarhisar",
      "Pazarlar"
    ]
  },
  {
    "il": "Malatya",
    "plaka": 44,
    "ilceleri": [
      "Ak??ada??",
      "Arapgir",
      "Arguvan",
      "Darende",
      "Do??an??ehir",
      "Hekimhan",
      "Merkez",
      "P??t??rge",
      "Ye??ilyurt",
      "Battalgazi",
      "Do??anyol",
      "Kale",
      "Kuluncak",
      "Yaz??han"
    ]
  },
  {
    "il": "Manisa",
    "plaka": 45,
    "ilceleri": [
      "Akhisar",
      "Ala??ehir",
      "Demirci",
      "G??rdes",
      "K??rka??a??",
      "Kula",
      "Merkez",
      "Salihli",
      "Sar??g??l",
      "Saruhanl??",
      "Selendi",
      "Soma",
      "??ehzadeler",
      "Yunusemre",
      "Turgutlu",
      "Ahmetli",
      "G??lmarmara",
      "K??pr??ba????"
    ]
  },
  {
    "il": "Kahramanmara??",
    "plaka": 46,
    "ilceleri": [
      "Af??in",
      "And??r??n",
      "Dulkadiro??lu",
      "Oniki??ubat",
      "Elbistan",
      "G??ksun",
      "Merkez",
      "Pazarc??k",
      "T??rko??lu",
      "??a??layancerit",
      "Ekin??z??",
      "Nurhak"
    ]
  },
  {
    "il": "Mardin",
    "plaka": 47,
    "ilceleri": [
      "Derik",
      "K??z??ltepe",
      "Artuklu",
      "Merkez",
      "Maz??da????",
      "Midyat",
      "Nusaybin",
      "??merli",
      "Savur",
      "Darge??it",
      "Ye??illi"
    ]
  },
  {
    "il": "Mu??la",
    "plaka": 48,
    "ilceleri": [
      "Bodrum",
      "Dat??a",
      "Fethiye",
      "K??yce??iz",
      "Marmaris",
      "Mente??e",
      "Milas",
      "Ula",
      "Yata??an",
      "Dalaman",
      "Seydikemer",
      "Ortaca",
      "Kavakl??dere"
    ]
  },
  {
    "il": "Mu??",
    "plaka": 49,
    "ilceleri": [
      "Bulan??k",
      "Malazgirt",
      "Merkez",
      "Varto",
      "Hask??y",
      "Korkut"
    ]
  },
  {
    "il": "Nev??ehir",
    "plaka": 50,
    "ilceleri": [
      "Avanos",
      "Derinkuyu",
      "G??l??ehir",
      "Hac??bekta??",
      "Kozakl??",
      "Merkez",
      "??rg??p",
      "Ac??g??l"
    ]
  },
  {
    "il": "Ni??de",
    "plaka": 51,
    "ilceleri": [
      "Bor",
      "??amard??",
      "Merkez",
      "Uluk????la",
      "Altunhisar",
      "??iftlik"
    ]
  },
  {
    "il": "Ordu",
    "plaka": 52,
    "ilceleri": [
      "Akku??",
      "Alt??nordu",
      "Aybast??",
      "Fatsa",
      "G??lk??y",
      "Korgan",
      "Kumru",
      "Mesudiye",
      "Per??embe",
      "Ulubey",
      "??nye",
      "G??lyal??",
      "G??rgentepe",
      "??ama??",
      "??atalp??nar",
      "??ayba????",
      "??kizce",
      "Kabad??z",
      "Kabata??"
    ]
  },
  {
    "il": "Rize",
    "plaka": 53,
    "ilceleri": [
      "Arde??en",
      "??aml??hem??in",
      "??ayeli",
      "F??nd??kl??",
      "??kizdere",
      "Kalkandere",
      "Pazar",
      "Merkez",
      "G??neysu",
      "Derepazar??",
      "Hem??in",
      "??yidere"
    ]
  },
  {
    "il": "Sakarya",
    "plaka": 54,
    "ilceleri": [
      "Akyaz??",
      "Geyve",
      "Hendek",
      "Karasu",
      "Kaynarca",
      "Sapanca",
      "Kocaali",
      "Pamukova",
      "Tarakl??",
      "Ferizli",
      "Karap??r??ek",
      "S??????tl??",
      "Adapazar??",
      "Arifiye",
      "Erenler",
      "Serdivan"
    ]
  },
  {
    "il": "Samsun",
    "plaka": 55,
    "ilceleri": [
      "Ala??am",
      "Bafra",
      "??ar??amba",
      "Havza",
      "Kavak",
      "Ladik",
      "Terme",
      "Vezirk??pr??",
      "Asarc??k",
      "Ondokuzmay??s",
      "Sal??pazar??",
      "Tekkek??y",
      "Ayvac??k",
      "Yakakent",
      "Atakum",
      "Canik",
      "??lkad??m"
    ]
  },
  {
    "il": "Siirt",
    "plaka": 56,
    "ilceleri": [
      "Baykan",
      "Eruh",
      "Kurtalan",
      "Pervari",
      "Merkez",
      "??irvan",
      "Tillo"
    ]
  },
  {
    "il": "Sinop",
    "plaka": 57,
    "ilceleri": [
      "Ayanc??k",
      "Boyabat",
      "Dura??an",
      "Erfelek",
      "Gerze",
      "Merkez",
      "T??rkeli",
      "Dikmen",
      "Sarayd??z??"
    ]
  },
  {
    "il": "Sivas",
    "plaka": 58,
    "ilceleri": [
      "Divri??i",
      "Gemerek",
      "G??r??n",
      "Hafik",
      "??mranl??",
      "Kangal",
      "Koyulhisar",
      "Merkez",
      "Su??ehri",
      "??ark????la",
      "Y??ld??zeli",
      "Zara",
      "Ak??nc??lar",
      "Alt??nyayla",
      "Do??an??ar",
      "G??lova",
      "Ula??"
    ]
  },
  {
    "il": "Tekirda??",
    "plaka": 59,
    "ilceleri": [
      "??erkezk??y",
      "??orlu",
      "Ergene",
      "Hayrabolu",
      "Malkara",
      "Muratl??",
      "Saray",
      "S??leymanpa??a",
      "Kapakl??",
      "??ark??y",
      "Marmaraere??lisi"
    ]
  },
  {
    "il": "Tokat",
    "plaka": 60,
    "ilceleri": [
      "Almus",
      "Artova",
      "Erbaa",
      "Niksar",
      "Re??adiye",
      "Merkez",
      "Turhal",
      "Zile",
      "Pazar",
      "Ye??ilyurt",
      "Ba????iftlik",
      "Sulusaray"
    ]
  },
  {
    "il": "Trabzon",
    "plaka": 61,
    "ilceleri": [
      "Ak??aabat",
      "Arakl??",
      "Arsin",
      "??aykara",
      "Ma??ka",
      "Of",
      "Ortahisar",
      "S??rmene",
      "Tonya",
      "Vakf??kebir",
      "Yomra",
      "Be??ikd??z??",
      "??alpazar??",
      "??ar????ba????",
      "Dernekpazar??",
      "D??zk??y",
      "Hayrat",
      "K??pr??ba????"
    ]
  },
  {
    "il": "Tunceli",
    "plaka": 62,
    "ilceleri": [
      "??emi??gezek",
      "Hozat",
      "Mazgirt",
      "Naz??miye",
      "Ovac??k",
      "Pertek",
      "P??l??m??r",
      "Merkez"
    ]
  },
  {
    "il": "??anl??urfa",
    "plaka": 63,
    "ilceleri": [
      "Ak??akale",
      "Birecik",
      "Bozova",
      "Ceylanp??nar",
      "Eyy??biye",
      "Halfeti",
      "Haliliye",
      "Hilvan",
      "Karak??pr??",
      "Siverek",
      "Suru??",
      "Viran??ehir",
      "Harran"
    ]
  },
  {
    "il": "U??ak",
    "plaka": 64,
    "ilceleri": [
      "Banaz",
      "E??me",
      "Karahall??",
      "Sivasl??",
      "Ulubey",
      "Merkez"
    ]
  },
  {
    "il": "Van",
    "plaka": 65,
    "ilceleri": [
      "Ba??kale",
      "??atak",
      "Erci??",
      "Geva??",
      "G??rp??nar",
      "??pekyolu",
      "Muradiye",
      "??zalp",
      "Tu??ba",
      "Bah??esaray",
      "??ald??ran",
      "Edremit",
      "Saray"
    ]
  },
  {
    "il": "Yozgat",
    "plaka": 66,
    "ilceleri": [
      "Akda??madeni",
      "Bo??azl??yan",
      "??ay??ralan",
      "??ekerek",
      "Sar??kaya",
      "Sorgun",
      "??efaatli",
      "Yerk??y",
      "Merkez",
      "Ayd??nc??k",
      "??and??r",
      "Kad????ehri",
      "Saraykent",
      "Yenifak??l??"
    ]
  },
  {
    "il": "Zonguldak",
    "plaka": 67,
    "ilceleri": [
      "??aycuma",
      "Devrek",
      "Ere??li",
      "Merkez",
      "Alapl??",
      "G??k??ebey"
    ]
  },
  {
    "il": "Aksaray",
    "plaka": 68,
    "ilceleri": [
      "A??a????ren",
      "Eskil",
      "G??la??a??",
      "G??zelyurt",
      "Merkez",
      "Ortak??y",
      "Sar??yah??i"
    ]
  },
  {
    "il": "Bayburt",
    "plaka": 69,
    "ilceleri": [
      "Merkez",
      "Ayd??ntepe",
      "Demir??z??"
    ]
  },
  {
    "il": "Karaman",
    "plaka": 70,
    "ilceleri": [
      "Ermenek",
      "Merkez",
      "Ayranc??",
      "Kaz??mkarabekir",
      "Ba??yayla",
      "Sar??veliler"
    ]
  },
  {
    "il": "K??r??kkale",
    "plaka": 71,
    "ilceleri": [
      "Delice",
      "Keskin",
      "Merkez",
      "Sulakyurt",
      "Bah??ili",
      "Bal????eyh",
      "??elebi",
      "Karake??ili",
      "Yah??ihan"
    ]
  },
  {
    "il": "Batman",
    "plaka": 72,
    "ilceleri": [
      "Merkez",
      "Be??iri",
      "Gerc????",
      "Kozluk",
      "Sason",
      "Hasankeyf"
    ]
  },
  {
    "il": "????rnak",
    "plaka": 73,
    "ilceleri": [
      "Beyt??????ebap",
      "Cizre",
      "??dil",
      "Silopi",
      "Merkez",
      "Uludere",
      "G????l??konak"
    ]
  },
  {
    "il": "Bart??n",
    "plaka": 74,
    "ilceleri": [
      "Merkez",
      "Kuruca??ile",
      "Ulus",
      "Amasra"
    ]
  },
  {
    "il": "Ardahan",
    "plaka": 75,
    "ilceleri": [
      "Merkez",
      "????ld??r",
      "G??le",
      "Hanak",
      "Posof",
      "Damal"
    ]
  },
  {
    "il": "I??d??r",
    "plaka": 76,
    "ilceleri": [
      "Aral??k",
      "Merkez",
      "Tuzluca",
      "Karakoyunlu"
    ]
  },
  {
    "il": "Yalova",
    "plaka": 77,
    "ilceleri": [
      "Merkez",
      "Alt??nova",
      "Armutlu",
      "????narc??k",
      "??iftlikk??y",
      "Termal"
    ]
  },
  {
    "il": "Karab??k",
    "plaka": 78,
    "ilceleri": [
      "Eflani",
      "Eskipazar",
      "Merkez",
      "Ovac??k",
      "Safranbolu",
      "Yenice"
    ]
  },
  {
    "il": "Kilis",
    "plaka": 79,
    "ilceleri": [
      "Merkez",
      "Elbeyli",
      "Musabeyli",
      "Polateli"
    ]
  },
  {
    "il": "Osmaniye",
    "plaka": 80,
    "ilceleri": [
      "Bah??e",
      "Kadirli",
      "Merkez",
      "D??zi??i",
      "Hasanbeyli",
      "Sumbas",
      "Toprakkale"
    ]
  },
  {
    "il": "D??zce",
    "plaka": 81,
    "ilceleri": [
      "Ak??akoca",
      "Merkez",
      "Y??????lca",
      "Cumayeri",
      "G??lyaka",
      "??ilimli",
      "G??m????ova",
      "Kayna??l??"
    ]
  }
]""";
const String _bransData = """[
  {
    "brans": "Futbol",
    "no": 82,
    "mevki": [
      "Farketmez",
      "Kaleci",
      "Defans",
      "Orta",
      "Forvet"
    ]
  },
  {
    "brans": "Voleybol",
    "no": 83,
    "mevki": [
      "Farketmez",
      "Smacor",
      "pasor",
      "servis",
      "orta"
    ]
  },
  {
    "brans": "Basketbol",
    "no": 84,
    "mevki": [
      "Farketmez",
      "ileri",
      "geri"
    ]
  },
  {
    "brans": "Gures",
    "no": 85,
    "mevki": [
      "Farketmez",
      "30-45kg",
      "45-60kg",
      "60-75kg",
      "75-90kg",
      "90kg-ustu"
    ]
  }, 
  {
    "brans": "Jimnastik",
    "no": 86,
    "mevki": [
      "Farketmez",
      "Artistik",
      "Ritmik",
      "Trampolin",
      "Aerobik",
      "Parkur",
      "Step"
    ]
  },
   {
    "brans": "Bisiklet",
    "no": 87,
    "mevki": [
      "Farketmez",
      "Yol",
      "Pist",
      "Cyclo-Cross",
      "BMX"
    ]
  }, 
   {
    "brans": "Satran??",
    "no": 88,
    "mevki": [
      "Farketmez",
      "S??reli",
      "S??resiz"
    ]
  }, 
  {
    "brans": "Yuzme",
    "no": 89,
    "mevki": [
      "Farketmez",
      "Serbest",
      "Kurba??alama",
      "Kelebekleme",
      "S??rt??st??",
      "Kar??????k"
    ]
  }, 
  {
    "brans": "Sumo",
    "no": 90,
    "mevki": [
      "Sumo"
    ]
  },
  {
    "brans": "Kick-Boks",
    "no": 91,
    "mevki": [
      "Farketmez",
      "Point-Fighting",
      "Light-Contact",
      "Kick-Light",
      "Full-Contact",
      "Low-Kick",
      "K1-Rules"
    ]
  },
  {
    "brans": "Boks",
    "no": 92,
    "mevki": [
      "Farketmez",
      "49-51kg",
      "52-54kg",
      "55-57kg",
      "59-62kg",
      "63-67kg",
      "69-73kg",
      "76-80kg",
      "90-??st??"
    ]
  },
  {
    "brans": "Muay-Thai",
    "no": 93,
    "mevki": [
      "Farketmez",
      "Point-Fighting",
      "K1-Rules"
    ]
  },
  {
    "brans": "Judo",
    "no": 94,
    "mevki": [
      "Farketmez",
      "34-38kg",
      "42-46kg",
      "50-55kg",
      "60-66kg",
      "73-81kg",
      "90-??st??"
    ]
  },
  {
    "brans": "Eskrim",
    "no": 95,
    "mevki": [
      "Farketmez",
      "Fl??re",
      "Epe",
      "K??l????"
    ]
  },
  {
    "brans": "Amerikan-Futbolu",
    "no": 96,
    "mevki": [
      "Farketmez",
      "Safety",
      "Cornerback",
      "Outside-Linebacker",
      "End",
      "Tackle",
      "Middle-Linebacker"
    ]
  },
  {
    "brans": "Bowls",
    "no": 97,
    "mevki": [
      "Bowls"
    ]
  },
  {
    "brans": "Korfball",
    "no": 98,
    "mevki": [
      "Korfbol"
    ]
  },
  {
    "brans": "Trekking",
    "no": 99,
    "mevki": [
      "Trekking"
    ]
  },
  {
    "brans": "T??rman????",
    "no": 99,
    "mevki": [
      "Farketmez",
      "Serbest",
      "Free-Solo",
      "Yapay",
      "E??itim",
      "Uzun-Duvar",
      "Yapay-Duvar"
    ]
  },
  {
    "brans": "Atletizm",
    "no": 100,
    "mevki": [
      "Farketmez",
      "100m-Ko??u",
      "200m-Ko??u",
      "400m-Ko??u",
      "110m-Engelli-Ko??u-Erkek",
      "100m-Engelli-Ko??u-Kad??n",
      "800m-Ko??u",
      "1500m-Ko??u",
      "1mil-Ko??u",
      "3000m-Ko??u",
      "5000m-Ko??u",
      "10000m-Ko??u",
      "3000m-Su-Engeli",
      "Bayrak-Ko??ular??",
      "42km-Maraton-Ko??usu",
      "21km-Yar??-Maraton-Ko??usu",
      "10km-Maraton",
      "15km-Maraton",
      "Y??r??y????",
      "Atlama",
      "Atma",
      "Kros-Da??-Ko??usu"
    ]
  },
  {
    "brans": "K??rek",
    "no": 101,
    "mevki": [
      "Farketmez",
      "K??y??-Okyanus",
      "??niversite",
      "Okyanus",
      "Yar????-Teknesi",
      "K??rek-Egzersizi",
      "Tek-K??rek",
      "K??rek-??ekme"
    ]
  },
  {
    "brans": "Yelken",
    "no": 102,
    "mevki": [
      "Yelken"
    ]
  },
  {
    "brans": "Badminton",
    "no": 103,
    "mevki": [
      "Badminton"
    ]
  },
  {
    "brans": "Triatlon",
    "no": 104,
    "mevki": [
      "Triatlon"
    ]
  },
  {
    "brans": "Ok??uluk",
    "no": 105,
    "mevki": [
      "Ok??uluk"
    ]
  },
  {
    "brans": "Kano",
    "no": 106,
    "mevki": [
      "Kano"
    ]
  },
  {
    "brans": "At??c??l??k",
    "no": 107,
    "mevki": [
      "At??c??"
    ]
  },
  {
    "brans": "Masa-Tenisi",
    "no": 108,
    "mevki": [
      "Tenis??i"
    ]
  },
  {
    "brans": "Binicilik",
    "no": 109,
    "mevki": [
      "Farketmez",
      "Engel-Atlama",
      "At-Terbiyesi",
      "Engelli-At-Terbiyesi",
      "Atl??-Dayan??kl??l??k",
      "Voltij",
      "Atl??-Arabac??l??k",
      "Engelli-Atl??-Arabac??l??k",
      "Dizginleme"
    ]
  },
  {
    "brans": "Taekwon-Do",
    "no": 110,
    "mevki": [
      "Taekwon-Do"
    ]
  },
  {
    "brans": "Halter",
    "no": 111,
    "mevki": [
      "Farketmez",
      "Koparma",
      "Silkme"
    ]
  },
  {
    "brans": "Hokey",
    "no": 112,
    "mevki": [
      "Farketmez",
      "A????k-Alan",
      "Salon",
      "Analig",
      "Okul",
      "Plaj"
    ]
  },
  {
    "brans": "Hentbol",
    "no": 113,
    "mevki": [
      "Hentbol"
    ]
  },
  {
    "brans": "Pentatlon",
    "no": 114,
    "mevki": [
      "Pentatlon"
    ]
  },{
    "brans": "Su-Topu",
    "no": 115,
    "mevki": [
      "Farketmez",
      "Kaleci",
      "Oyuncu"
    ]
  },
  {
    "brans": "??norkel-Dal??????",
    "no": 116,
    "mevki": [
      "Dal????????"
    ]
  },
  {
    "brans": "T??pl??-Dal????",
    "no": 117,
    "mevki": [
      "Dal????????"
    ]
  },
  {
    "brans": "Waboba",
    "no": 118,
    "mevki": [
      "Waboba"
    ]
  },
  {
    "brans": "S??rf",
    "no": 119,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Bal??k????l??k",
    "no": 120,
    "mevki": [
      "Farketmez",
      "Oltal??",
      "A??l??",
      "Z??pk??nl??",
      "Tekneli"
    ]
  },
  {
    "brans": "Kayak",
    "no": 121,
    "mevki": [
      "Farketmez",
      "Kuzey-Kombine",
      "Alp-Disiplini",
      "Free-Ride",
      "Atlama",
      "Free-Style",
      "Skibob",
      "Carving",
      "Skywall",
      "Monoski",
      "Telemark",
      "Boarder-Cross",
      "Half-Pipe",
      "Biatlon",
      "Snowboard",
      "Kayakl??-Ko??u",
      "Skiboarding"
    ]
  },
  {
    "brans": "Rafting",
    "no": 122,
    "mevki": [
      "Rafting"
    ]
  },
  {
    "brans": "Dragon-Boat",
    "no": 123,
    "mevki": [
      "Dragon-Bot"
    ]
  },
  {
    "brans": "Ayakta-K??rek-S??rf",
    "no": 124,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "BodyBoarding",
    "no": 125,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Flyboard",
    "no": 126,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Jet-Ski",
    "no": 127,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Kablolu-Kayak",
    "no": 128,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Kano",
    "no": 129,
    "mevki": [
      "Kano"
    ]
  },
  {
    "brans": "Kiteboat",
    "no": 130,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Parasail",
    "no": 131,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Picigin",
    "no": 132,
    "mevki": [
      "Sporcu"
    ]
  },
  {
    "brans": "R??zgar-S??rf??",
    "no": 133,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "Sit-Down-Hydrofoil",
    "no": 134,
    "mevki": [
      "Sporcu"
    ]
  },
  {
    "brans": "Skimboard",
    "no": 135,
    "mevki": [
      "S??rf????"
    ]
  },
  {
    "brans": "LOL",
    "no": 136,
    "mevki": [
      "Farketmez",
      "Support",
      "ADC",
      "Top",
      "Jungle",
      "Mid"
    ]
  },
  {
    "brans": "Paten",
    "no": 137,
    "mevki": [
      "Patenci"
    ]
  },
  {
    "brans": "Fitness",
    "no": 138,
    "mevki": [
      "Farketmez",
      "Esneklik",
      "Kardiyovask??ler/aerobik",
      "Anaerobik",
      "Dayan??kl??l??k"
    ]
  },
  {
    "brans": "BodyBuilding",
    "no": 139,
    "mevki": [
      "Farketmez",
      "Kol",
      "Omuz",
      "S??rt",
      "Kar??n",
      "Bacak",
      "Squat",
      "Kanat",
      "Full"
    ]
  }
]""";
