import 'package:flutter/material.dart';
import 'package:sile/config.dart';
import '../Widget/generate_history.dart';

class Rehber extends StatefulWidget {
  Rehber({Key? key}) : super(key: key);

  @override
  State<Rehber> createState() => _RehberState();
}

class _RehberState extends State<Rehber> {
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
          // todo: makePagemetoduna map stringleri parametre olarak verilecek.
          makeHistoryPage(
              map_zekimuren,
              elsanat,
              "Şile Bezi El Sanat Merkezi",
              "İlçemizde İstanbul’un tek coğrafi işaretli  ürünü olma özelliği taşıyan Şile Bezi’ne ait dokuma kültürünün ve el sanatlarının canlandırılmasına yönelik çalışmaların merkezi haline gelen Şile Bezi El Sanatları Merkezimiz, ulusal ve uluslararası platformlarda tanıtımı için de önemli çalışmalarda bulunmaktadır. Geleneksel dokuya sadık kalınarak günümüz modern üretimin faydaladalırından da esinlenerek üretim yapmakta olan merkezimiz yerel üreticilerimize teknik destek vererek istihdam açısından öncü bir rol üstlenmektedir. ",
              1,
              5),
          makeHistoryPage(
              map_treasofular,
              bez,
              "Şile Bezi Kültür ve Sanat Festivali",
              "İstanbul’un en eski, en kadim festivallerinden biri her yıl Temmuz-Ağustos ayları arasında Şile’de vücut buluyor. Uluslararası Şile Bezi Kültür ve Sanat Festivali, İstanbul’un tek coğrafi işaretli ürünü olan Şile Bezi’ni tanıtma amacıyla 33 yıldır sizlerle buluşmaya devam ediyor. Her yıl büyük bir coşkuya sahne olan festival, Üsküdar Caddesi’ni adeta bir karnaval alanına çeviren kortej yürüyüşüyle başlıyor.",
              2,
              5),
          makeHistoryPage(
              map_mesrutiyet,
              liman,
              "Şile Limanı",
              "Geçmişten bugüne balıkçı kasabası olan Şile’nin en uğrak yeridir Şile Limanı. Özellikle av sezonunda irili ufaklı teknelerin yarattığı deniz trafiği, sıralanmış balık restoranları, yürüyüş ve olta balıkçılığı tutkunlarını misafir eden mendireği ile mutlaka görülmesi gereken bir noktadır.Eğer siz de Şile Limanındaysanız, kale panoramasını ve Ayazma Plajından muhteşem gün batımını rahatlıkla izleyecek ve mest olacaksınız. Liman ve Marina panoramasına bakarak balık yemek istiyorsanız, Şile Limanı ve Marina bölgesi etrafındaki işletmeleri gönül rahatlığıyla tercih edebilirsiniz.Liman içinden başlayarak, tekneleri ve Karadeniz’i izleyerek Marina bölgemize ulaşabilirsiniz. Burada sizi birbirinden güzel mekanlar ve spor aktivite alanları karşılıyor olacak. Şile Kalesi’ni arkanıza alıp, hatıra fotoğrafı çekmeyi unutmayın.",
              3,
              5),

          makeHistoryPage(
              map_hacilli,
              koyler,
              "Şile Köyler",
              "Şile ilçe sınırları içerisinde bulunan ve yerleşik köy hayatının, tarımsal üretimin, hayvancılığın devam ettiği 57 mahallemiz ile Anadolu rüzgârını iliklerinize kadar hissedebilirsiniz. Hayvancılık, tarım ve doğal köy hayatının yaşandığı mahallelerimizde yapacağınız gezinti ile metropolün negatif etkilerinden hızlıca arınacak, birbirinden keyifli anlar yaşayacaksınız. Şile’nin muhteşem doğası, her mevisimi ayrı renkte ormanları ve doğal köy ürünleri sizi misafir etmeye hazır.",
              4,
              5),
          makeHistoryPage(
              map_hacilli,
              pazar,
              "Şile Yeryüzü Pazarı",
              "Yerli üreticilerimizin geleneksel tarım yöntemleriyle, tamamen atalık tohumlar kullanarak ürettikleri mahsulleri, denetimimizle beraber doğrudan halka sundukları bir pazar olan Şile Yeryüzü Pazarı-Şile Earth Market, İstanbul’un yüz akı olmaya devam ediyor. Pazarımızdaki geleneksel ve doğal ürünlerin, Şile Kestane Balı’nın, Kestane Balı Sirkesi’nin Ekşi Mayalı Köy Ekmeğimizin daha çok İstanbulluya ulaşmasını istiyoruz. Küçük aile çiftçiliği için büyük bir model olan bu proje ile ilçemizdeki yerleşik köy hayatınının sürdürebilirliğini sağlamayı hedefliyoruz.Kurda kuşa aşa sağlıklı ürün sunulmasında köprü vazifesi gören Şile Yeryüzü Pazarı, sağlıklı ve doğal ürünlerle buluşmak isteyen herkesi bekliyor.“Şile, İstanbul’un Anadolusu’dur.”",
              5,
              5),
        ],
      ),
    );
  }
}
