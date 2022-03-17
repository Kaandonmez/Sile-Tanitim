import 'package:flutter/material.dart';
import 'package:sile/config.dart';
import '../Widget/generate_treasure.dart';

class Treasure extends StatefulWidget {
  Treasure({Key? key}) : super(key: key);

  @override
  State<Treasure> createState() => _TreasureState();
}

class _TreasureState extends State<Treasure> {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          // todo: makePagemetoduna map stringleri parametre olarak verilecek. (tamamlandı)
          makePage(
              map_zekimuren,
              zekimurenmagra,
              "Zeki Müren Mağrası",
              "İçi geniş, tavan yüksekliği 7 metre civarında olan doğal  bir oluşum... Peki neden buraya Zeki Müren Mağarası denilmiştir? Zeki Müren her yaz geldiğinde burayı ziyaret ettiği için \"Zeki Müren Mağarası\" adı verilmiştir.",
              1,
              9),
          makePage(
              map_treasofular,
              sofularmagra,
              "Sofular Mağrası",
              "İlçemizin Sofular Mahallesi sahil kısmı mağara burnu mevkiinde bulunan Sofular Mağarası ilk Hristiyanlarca kilise olarak kullanılmıştır.\nDoğal oluşumu ile giriş bölümünde doğal bir aydınlık bulunan mağaramız mağaracılık sporu için gerekli  teçhizatlara sahipseniz size görsel bir şölen sunacaktır.",
              2,
              9),
          makePage(
              map_mesrutiyet,
              mesrutiyetmagra,
              "Meşrutiyet Mağrası",
              "İlçemizin Meşrutiyet mahallesinin 500 m. doğusunda bulunan Meşrutiyet Mağarası, Mağaraaltı mağarası da olarak bilinmektedir.\nBeyaz renkli Üst Kretase yaşlı Ahmetli kireçtaşları oluşam mağara 40 metre uzunluğunda kuru, fosil bir karstik mağaradır.",
              3,
              9),
          makePage(
              map_hacilli,
              hacililiselale,
              "Hacılılı Şelalesi",
              "Kamp ve doğa tutkunlarının sıklıkla uğradığı bir noktadır Hacıllı. Keyifli bir yürüyüş parkurunun ardından ulaştığınız Hacıllı Şelalesi ise doğada geçireceğiniz bir günün size en büyük hediyesi olacak.",
              4,
              9),
          makePage(
              map_tresagva,
              agva,
              "Ağva",
              "Romalılar, Hititler, Frigler ve Osmanlılar gibi birçok medeniyete ev sahipliği yapan, İlçemizin en önemli turizm duraklarından biridir Ağva… İki dere arasında kalan bu güzel mahalle, ilçenin en eski yerleşim yerlerinden biri olup, butik otelleri ile bir turizm cennetidir.",
              5,
              9),
          makePage(
              map_kilimli,
              agvakilimli,
              "AĞVA KİLİMLİ KOYU",
              "Ağva’nın eşsiz fotoğraflara konu olan doğa harikası Kilim Koyu denizinin muhteşem rengi ve eşsiz kaya oluşumlarını içinde barındıran manzarası ile ilçemizin önemli bir ziyaret noktası. Özellikle kamp kültüründen hoşlananların tercih ettiği koyu mutlaka ziyaret etmenizi öneririz.",
              6,
              9),
          makePage(
              map_kadirga,
              agvakadirga,
              "AĞVA KADIRGA KOYU",
              "Ağva’nın bir başka saklı güzelliği olan Kadırga Koyu ziyaretçilerini büyülüyor. Rüzgâr ve dalgaların zamanla şekillendirdiği kireç taşından oluşan kayalar görünümü ile adeta bir amfi tiyatroyu andırıyor. Merak eden misafirlerimiz yanlarından yürüyüş ekipmanlarını eksik etmesin.",
              7,
              9),
          makePage(
              map_boru,
              borukaya,
              "Jeolojik Miras Boru Kayalar",
              "Uluslararası ölçekte, literatürel değeri olan ve ilçemizin Doğancılı Mahallesi sahilinde bulunan Boru Kayalar, 7000 ila 800.000 senede sahil kumulların oluşturduğu jeolojik bir mirasımız. Benzeri dünyada Çin ve Bahamalarda görülen Boru Kayalar doğa tutkunlarını bekliyor.",
              8,
              9),
          makePage(
              map_sile,
              sile3,
              "Şile Florası",
              "Nemli orman sahasının esas ağacı olan kayının yerini bugün meşe türleri almıştır. Şile ilçesi üzerindeki nemli ormanlar sahası, Ağva’da denize ulaşan Göksu Deresi vadisi sınır alınarak iki kısımda incelenebilir.Bu vadinin batısında kalan sahada meşe ve kestane, doğusunda kalan sahada ise kayın hâkimdir.",
              9,
              9),
        ],
      ),
    );
  }
}
