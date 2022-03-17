import 'package:flutter/material.dart';
import '../Widget/generate_history.dart';
import '../config.dart';

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

          if (yukseklik == 50) {
            setState(() {
              yukseklik = 250;
              sayfano = value;
            });
          }

          if (sayfano != value) {
            if (yukseklik == 250) {
              setState(() {
                yukseklik = 50;
              });
            }
          }

          print(sayfano);
        },
        controller: _pageController,
        children: [
          // todo: makePagemetoduna map stringleri parametre olarak verilecek.
          makeHistoryPage(
              map_zekimuren,
              heciz,
              "Heciz Kalesi",
              "İlçemizin Kalealtı Mahallesi yakınlarında bir tepe üzerine Ahmetli kireç taşlarından inşa edilen Heciz Kalesine 100 metrelik bir tırmanış yolu ile ulaşılmaktadır.Eski Şile-İstanbul yolu üzerinde 15. Kilometresinde bulunan Heciz Kalesi’nin yapımı Bizans dönemine aittir.Dairesel 3 kuleye ve surlara sahip olan kalenin güneyinde yine su sarnıcı inşa edilmiştir.İlçemizin eski bir yerleşim yeri olduğuna dair en güzel öreklerinden birini sunan Heciz Kalesi ziyaretçilerini bekliyor. ",
              1,
              totalHistoryPage),
          makeHistoryPage(
              map_treasofular,
              vaftizhane,
              "Vaftizhane",
              "Yeniköy Mahallesi 1770 yılında kurulan ve Rumlar tarafından merkez olarak kullanılan çok eski bir yerleşim yeridir.Yeniköy mahallemizde 18. yüzyılda inşa edildiği düşünülen Santa-Lea vaftiz kilisesi mevcuttur ve ana cephesi hala ayaktadır.Vaftizhane içerisinde bulunan vaftiz havuzu hala aktiftir.",
              2,
              totalHistoryPage),
          makeHistoryPage(
              map_mesrutiyet,
              cadde,
              "Tarihi Çeşme ve Hamamlar",
              "Hanımsuyu Çeşmesi, Osmanlılar zamanında Hatice Hanım adında Mısırlı bir kadın tarafından 1871'de yaptırılmış. Günümüzde de suyundan içilen çeşme \"Tatlı Su\" olarak biliniyor. Kabakoz Köyü Çeşmesi, Şile'nin 11km kuzeyinde Bizanslılar tarafından yaptırılmış. Bu çeşme tam 600 yıllık tarihi bir geçmişe sahip.Çarşı içerisinde, Üsküdar Caddesi üzerindedir. 1871 yılında Mısırlı Hatice Hanım tarafından hayrat olarak yaptırılmıştır. 3 kurnası olup, batı ve kuzey tarafındaki kurnalar üzerinde iki tane kitabesi vardır. Çeşmeye ilk su verildiğinde deposuna şeker atıldığı için suyunun hala tatlı olduğu rivayet edilir.",
              3,
              totalHistoryPage),
          makeHistoryPage(
              map_mesrutiyet,
              tarih_foto,
              "Tarihi Çeşme ve Hamamlar",
              "Kadim bir geçmişe sahip Şile’de pek çok tarihi eser yıllara meydan okumaya devam ediyor. Şile Deniz Feneri, Şile Ocaklı Ada Kalesi gibi bilinen yapıların haricinde ilçede yine tarihi değere sahip çeşme ve hamamlarda mevcut. Yine bölgede Osmanlı döneminden kalma çokça mezar taşı bulunmaktadır. \n\n Eski Hamam kalıntıları ilçe merkezindeki Hamamdere mahallesindedir. Bu yapı Osmanlılar tarafından inşa edilmiştir.",
              3,
              totalHistoryPage),
          makeHistoryPage(
              map_hacilli,
              sarikavak,
              "Sarıkavak Kalesi",
              "Şile merkeze 28 km uzaklıkta bulunan Sarıkavak Kalesi, Hasanlı Köyü’nde yer almaktadır.Bizanslılar tarafından yapılan kale, tepe konumundadır. Kaleye ait dört kule bulunmaktadır.Kalenin geçmişte bulunan önemli bir antik yolun kontrol edilmesi amacıyla inşa edildiği tahmin edilmektedir ve oval bir plana sahiptir.",
              4,
              totalHistoryPage),
          makeHistoryPage(
              map_aglayankaya,
              kumbaba_motel,
              "Kumbaba Motel",
              "1953 yılında gazeteci  yazar Turan Aziz Beler tarafından ilçe turizmine kazandırılan Şile’nin ilk turistik işletme belgesine sahip olan Kumbaba Motel 2001 yılında yapılan restorasyon çalışmalarının ardından 2021 sezonu öncesi ziyaretçilerini yeniden ağırlamaya hazırlanıyor.48 yıl boyunca özellikle Avrupa ülkelerinden gelen ziyaretçilerin uğrak yeri olan Kumbaba Motel bu yıllar içerisinde birçok arkeolojik esere ev sahipliği yapmış, motelde bulunan eserler daha sonradan İstanbul Arkeoloji Müzesi tarafından korunmaya alınmıştır.Mimarisi ve çevre düzenlemesi ile kendine has bir çizgisi olan Kumbaba Motel kurulduğu yıllarda Türkiye’nin turistik işletme belgesini alan 41. Tesisidir.",
              5,
              totalHistoryPage),
          makeHistoryPage(
              map_kilimli,
              sile_kalesi,
              "Şile Kalesi",
              "Şile’de dört kale vardır. Ama en tanınmışları Bizanslılardan kalan limanda Ocaklı Ada’nın üzerinde yer alan Şile Kalesi ya da Ocaklı Ada Kalesi’dir. Şile Kalesi kendisini diğer kalelerden ayrılan silueti ile Şile’yi tanımlayan simgelerin başında gelir.Ada yüzeyinden oluşan  kireç taşları kullanılarak inşa edilmiş olan bu kale 12 metre yüksekliğindedir. Denizden gelebilecek saldırılara karşı koyabilmek amacıyla inşa edilmiştir.İlk düşünülenin aksine kale bir saldırı değil gözetleme kalesi olarak inşa edilmiştir. 4 katlı yapısı incelendiğinde en altta kilerin bulunduğu, diğer katların da yaklaşık 20 kişilik bir asker grubunu barındırmak için uygun olduğu anlaşılır.Kale çağlar boyunca iki kez tamir görmüştür. Önce Bizanslılar sonra da Osmanlılar kaleyi yine gözetleme amaçlı kullanabilmek için onarımdan geçirmişlerdir.",
              6,
              totalHistoryPage),
          makeHistoryPage(
              map_kadirga,
              sile_feneri,
              "Şile Feneri",
              "Şile Deniz Feneri Türkiye’nin aktif en büyük feneridir. Işığı görüşün açık olduğu gecelerde yaklaşık 35 mil mesafeden görülebilir. 15 saniye aralıkla çakan bir fener olan Şile Feneri’nin kristalleri orijinal olup 8 kol olarak 1 turu tamamlar. Uluslararası standartlarda birinci sınıf deniz feneridir.Şile Deniz Feneri’nin tarihi değeri oldukça büyüktür. Kırım harbinde Karadeniz’ den İstanbul boğazına girecek gemilerin yollarını bulabilmeleri için yapılmış olan fener bu amaçla boğazlar civarında 1856‘ da yapılan Anadolu Fenerinden sonra faaliyete girmiştir. Taş yapısında Türk mimarlarımızın imzası olan Şile Deniz Feneri’nin  metal aksamı ve mercek kristal sistemi Fransa’ da bulunan Paris – Barbeur fabrikasında yapılmıştır. Yapımında ışık kaynağı olarak üç fitilli gaz lambası kullanılmış ve alt kısmında gazın dinlendirilerek süzülmesi için sarnıç şeklinde yapılan özel bir deposu vardır. 1111111 111 lksdflskjfs df sdlkfj slkjf ls lf ls jkdj slj lkjlksjdlkfjlsjdf slkfj slkfj slkjklsjdfksfjslkjdfk sldkfj sdlkfjslkdjf slkfj skldfj slkdfj lksj lksdfj lsdkfj lsdfjlsdfjslkf sdklfj slkdfj sldkfj sdkfj ",
              7,
              totalHistoryPage),
          makeHistoryPage(
              map_boru,
              kayikhane,
              "Tahlisiye Kayıkhanesi",
              "Tahlisiye teşkilatı en köklü denizcilik kurumlarımızdandır. Günümüzde Kıyı Emniyeti ve Gemi Kurtarma İşletmeleri adını alan teşkilat 1866 yılında Tahlisiye İdaresi adı altında kurulmuştur. Bu nedenle Karadeniz’de boğazın her iki yanında konuşlanan teşkilatın İngilizler tarafından 1866 da yapılan binaları ve eski kurtarma malzemeleri tarihi eser niteliğindedir.Şile merkezdeki istasyon, koğuş, kayıkhane ve rokethaneden oluşur.Karaburun tahlisiye binası koğuş, gözetleme kulesi ve kayıkhanesi ile halihazırda aktif bir tahlisiye binası olarak kullanılmaktadır.Kumbaba mevkiinde bulunan rokethane binası kullanımda değildir ve koruma altındadır. ",
              8,
              totalHistoryPage),
        ],
      ),
    );
  }
}
