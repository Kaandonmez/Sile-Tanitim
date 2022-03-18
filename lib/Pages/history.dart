import 'package:flutter/material.dart';
import '../Widget/generate_history.dart';
import '../config.dart';
import 'dart:io';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late PageController _pageController;
  void _onScroll() {
    //print("sayfa değişiyor!");
    //print(_pageController.page);
    //print(sayfano);
  }

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
        onPageChanged: (value) {
          //_onScroll();

          setState(() {
            yukseklik = 50;
          });
          //sleep(Duration(seconds: 2));

          //print(sayfano);
        },
        controller: _pageController,
        children: [
          // todo: makePagemetoduna map stringleri parametre olarak verilecek.
          makeHistoryPage(
              map_zekimuren,
              heciz,
              "Heciz Kalesi",
              "İlçemizin Kalealtı Mahallesi yakınlarında bir tepe üzerine Ahmetli kireç taşlarından inşa edilen Heciz Kalesine 100 metrelik bir tırmanış yolu ile ulaşılmaktadır.\n\nEski Şile-İstanbul yolu üzerinde 15. Kilometresinde bulunan Heciz Kalesi’nin yapımı Bizans dönemine aittir.\n\nDairesel 3 kuleye ve surlara sahip olan kalenin güneyinde yine su sarnıcı inşa edilmiştir.\n\nİlçemizin eski bir yerleşim yeri olduğuna dair en güzel öreklerinden birini sunan Heciz Kalesi ziyaretçilerini bekliyor.",
              1,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_treasofular,
              vaftizhane,
              "Vaftizhane",
              "Yeniköy Mahallesi 1770 yılında kurulan ve Rumlar tarafından merkez olarak kullanılan çok eski bir yerleşim yeridir.\n\nYeniköy mahallemizde 18. yüzyılda inşa edildiği düşünülen Santa-Lea vaftiz kilisesi mevcuttur ve ana cephesi hala ayaktadır.\n\nVaftizhane içerisinde bulunan vaftiz havuzu hala aktiftir.",
              2,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_mesrutiyet,
              cadde,
              "Tarihi Çeşmeler",
              "Kadim bir geçmişe sahip Şile’de pek çok tarihi eser yıllara meydan okumaya devam ediyor. Şile Deniz Feneri, Şile Ocaklı Ada Kalesi gibi bilinen yapıların haricinde ilçede yine tarihi değere sahip çeşme ve hamamlarda mevcut. Yine bölgede Osmanlı döneminden kalma çokça mezar taşı bulunmaktadır.\n\nÇEŞMELER\n\nHanımsuyu Çeşmesi, Osmanlılar zamanında Hatice Hanım adında Mısırlı bir kadın tarafından 1871'de yaptırılmış. Günümüzde de suyundan içilen çeşme \"Tatlı Su\" olarak biliniyor. Kabakoz Köyü Çeşmesi, Şile'nin 11km kuzeyinde Bizanslılar tarafından yaptırılmış. Bu çeşme tam 600 yıllık tarihi bir geçmişe sahip.\n\nÇarşı içerisinde, Üsküdar Caddesi üzerindedir. 1871 yılında Mısırlı Hatice Hanım tarafından hayrat olarak yaptırılmıştır. 3 kurnası olup, batı ve kuzey tarafındaki kurnalar üzerinde iki tane kitabesi vardır. Çeşmeye ilk su verildiğinde deposuna şeker atıldığı için suyunun hala tatlı rivayet edilir",
              3,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_mesrutiyet,
              tarih_foto,
              "Tarihi Hamamlar",
              "HAMAMLAR\n\nEski Hamam kalıntıları ilçe merkezindeki Hamamdere mahallesindedir. Bu yapı Osmanlılar tarafından inşa edilmiştir.",
              3,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_hacilli,
              sarikavak,
              "Sarıkavak Kalesi",
              "Şile merkeze 28 km uzaklıkta bulunan Sarıkavak Kalesi, Hasanlı Köyü’nde yer almaktadır.\n\nBizanslılar tarafından yapılan kale, tepe konumundadır. Kaleye ait dört kule bulunmaktadır.\n\nKalenin geçmişte bulunan önemli bir antik yolun kontrol edilmesi amacıyla inşa edildiği tahmin edilmektedir ve oval bir plana sahiptir.",
              4,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_aglayankaya,
              kumbaba_motel,
              "Kumbaba Motel",
              "1953 yılında gazeteci  yazar Turan Aziz Beler tarafından ilçe turizmine kazandırılan Şile’nin ilk turistik işletme belgesine sahip olan Kumbaba Motel 2001 yılında yapılan restorasyon çalışmalarının ardından 2021 sezonu öncesi ziyaretçilerini yeniden ağırlamaya hazırlanıyor.\n\n48 yıl boyunca özellikle Avrupa ülkelerinden gelen ziyaretçilerin uğrak yeri olan Kumbaba Motel bu yıllar içerisinde birçok arkeolojik esere ev sahipliği yapmış, motelde bulunan eserler daha sonradan İstanbul Arkeoloji Müzesi tarafından korunmaya alınmıştır.\n\nMimarisi ve çevre düzenlemesi ile kendine has bir çizgisi olan Kumbaba Motel kurulduğu yıllarda Türkiye’nin turistik işletme belgesini alan 41. Tesisidir.",
              5,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_kilimli,
              sile_kalesi,
              "Şile Kalesi",
              "Şile’de dört kale vardır. Ama en tanınmışları Bizanslılardan kalan limanda Ocaklı Ada’nın üzerinde yer alan Şile Kalesi ya da Ocaklı Ada Kalesi’dir. Şile Kalesi kendisini diğer kalelerden ayrılan silueti ile Şile’yi tanımlayan simgelerin başında gelir.\n\nAda yüzeyinden oluşan  kireç taşları kullanılarak inşa edilmiş olan bu kale 12 metre yüksekliğindedir. Denizden gelebilecek saldırılara karşı koyabilmek amacıyla inşa edilmiştir.\n\nİlk düşünülenin aksine kale bir saldırı değil gözetleme kalesi olarak inşa edilmiştir. 4 katlı yapısı incelendiğinde en altta kilerin bulunduğu, diğer katların da yaklaşık 20 kişilik bir asker grubunu barındırmak için uygun olduğu anlaşılır.\n\nKale çağlar boyunca iki kez tamir görmüştür. Önce Bizanslılar sonra da Osmanlılar kaleyi yine gözetleme amaçlı kullanabilmek için onarımdan geçirmişlerdir. Ancak hazine söylentileri nedeniyle kale definecilerin istilasına uğramış ve bu arada oldukça tahrip edilmiştir.",
              6,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_kadirga,
              sile_feneri,
              "Şile Feneri",
              "İlçemizin en önemli sembollerinden biri olan Şile Deniz Feneri 1859’lara dayanan tarihi, ardında barındırdığı büyük denizcilik mirasıyla Şile’de parlamaya ve Karadeniz’i aydınlatmaya devam ediyor.\n\nAçık havalarda 35 milden görünen ışığıyla Şile’den İstanbul boğazına selam olsun.\n\nŞİLE DENİZ FENERİ\n\nŞile Deniz Feneri Türkiye’nin aktif en büyük feneridir. Işığı görüşün açık olduğu gecelerde yaklaşık 35 mil mesafeden görülebilir. 15 saniye aralıkla çakan bir fener olan Şile Feneri’nin kristalleri orijinal olup 8 kol olarak 1 turu tamamlar. Uluslararası standartlarda birinci sınıf deniz feneridir.\n\nFenerimiz Ulaştırma Bakanlığı projesi  kapsamında Ulaştırma Bakanı Sayın Binali Yıldırım’ın katılımıyla 2004 yılında yapılan törenle müze olarak turizme kazandırılmış ve halkımıza açılmıştır.\n\nŞile Deniz Feneri’nin tarihi değeri oldukça büyüktür. Kırım harbinde Karadeniz’ den İstanbul boğazına girecek gemilerin yollarını bulabilmeleri için yapılmış olan fener bu amaçla boğazlar civarında 1856‘ da yapılan Anadolu Fenerinden sonra faaliyete girmiştir. Taş yapısında Türk mimarlarımızın imzası olan Şile Deniz Feneri’nin  metal aksamı ve mercek kristal sistemi Fransa’ da bulunan Paris – Barbeur fabrikasında yapılmıştır.\n\nŞile Deniz Feneri, bu yıl itibariyle Ulaştırma Bakanlığı tarafından kapsamlı bir restorasyon sürecine tabi tutulmuştur. Çalışmaların tamamlanmasının ardından bu kıymetli yapı ilçenin turizm hayatına tekrardan kazandırılacaktır.\n\nŞİLE DENİZ FENERİ TEKNİK VE MİMARİ ÖZELLİKLER\n\n1859 – 1860 yıllarında Fransız Fenerler İdaresi tarafından yapılmıştır. Fener cihazının büyüklüğü bakımından Türkiye’nin en büyük deniz feneridir.\n\nYapımında ışık kaynağı olarak üç fitilli gaz lambası kullanılmış ve alt kısmında gazın dinlendirilerek süzülmesi için sarnıç şeklinde yapılan özel bir deposu vardır.\n\nDeniz seviyesinden 60 metre yükseklikte yer alan Şile Deniz Feneri’nin kule yüksekliği ise 19 metredir. Şehir elektriği ile çalışan fenerimizin cihazı ve kule yapısının orijinal hali korunmaktadır.\n\n1 dönüşünü 120 saniyede tamamlayan fener ışığı 8 adet göz biçimli mercekten yayılırken fenerin çalışması duvar saatlerinde kullanılan sarkaç sistemi ile gerçekleşmekte ve dişli tertibatı ile iki saatte bir kurulmaktadır.\n\nIşığı açık gecelerde yaklaşık olarak 35 mil mesafeden görülmektedir.",
              7,
              totalHistoryPage,
              context),
          makeHistoryPage(
              map_boru,
              kayikhane,
              "Tahlisiye Kayıkhanesi",
              "Tahlisiye teşkilatı en köklü denizcilik kurumlarımızdandır. Günümüzde Kıyı Emniyeti ve Gemi Kurtarma İşletmeleri adını alan teşkilat 1866 yılında Tahlisiye İdaresi adı altında kurulmuştur. Bu nedenle Karadeniz’de boğazın her iki yanında konuşlanan teşkilatın İngilizler tarafından 1866 da yapılan binaları ve eski kurtarma malzemeleri tarihi eser niteliğindedir.\n\nŞile merkezdeki istasyon, koğuş, kayıkhane ve rokethaneden oluşur. Şile’nin sembollerinden olan bu mimari değerimiz 2011 yılında başlatılan restorasyon çalışmaları neticesinde önce Tahlisiye binası orijinaline uygun olarak tamamlanmış, devamında da Tahlisiye Kayıkhanesi aslına uygun biçimde yenilenerek ilçe turizmine kazandırılmıştır. Şile’nin 150 yıllık denizcilik kültürünü yansıtan bu sembol değerler, yapılan restorasyon çalışmaları ile gelecek kuşaklara aktarılabilecektir.\n\nKaraburun tahlisiye binası koğuş, gözetleme kulesi ve kayıkhanesi ile halihazırda aktif bir tahlisiye binası olarak kullanılmaktadır.\n\nKumbaba mevkiinde bulunan rokethane binası kullanımda değildir ve koruma altındadır.",
              8,
              totalHistoryPage,
              context),
        ],
      ),
    );
  }
}
