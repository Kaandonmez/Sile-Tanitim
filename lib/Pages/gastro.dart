import 'package:flutter/material.dart';
import '../Widget/generate_history.dart';
import 'package:sile/config.dart';

class Gastro extends StatefulWidget {
  Gastro({Key? key}) : super(key: key);

  @override
  State<Gastro> createState() => _GastroState();
}

class _GastroState extends State<Gastro> {
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
              map_treasofular,
              ekmek,
              "Ekşi Mayalı Köy Ekmeği",
              "Geleneksel yöntemlerle yapılan ekşi maya ve Kızılca buğdayından elde edilen un ile yoğurup fermente edilen hamur, gökçe çalısıyla yakılan ateş tuğlasından yapılmış fırınlarda pişirilerek eşsiz bir lezzete dönüşmektedir. Hacim olarak büyük ve görüntüsü göze hitap eden, aynı zamanda el emeğinin tadı ve geleneksel yapının kokusunu barındıran ekşi mayalı köy ekmeği, Şile bölgesi kültürel mirası içerisinde önemli bir yere sahiptir. Özellikle bahar ve yaz aylarında hemen hemen her mahallede yanan köy fırınlarını görebilir, bu sağlıklı ve geleneksel lezzeti tadımlayabilirsiniz. Her Cuma ve Pazar günü kurulan Şile Yeryüzü Pazarı’nda geleneksel ekmeğimizin yanı sıra, balkabaklı ve pancarlı ekmeklerimizde tezgâhlarda yer almaktadır.",
              1,
              4,
              context),
          makeHistoryPage(
              map_zekimuren,
              gastro,
              "Yöresel Lezzetler",
              "Bilik: Ekşi mayalı ekmek hamuru ince uzun halde pişirildikten sonra küp küp kesilir ve tekrar fırınlanarak kurutulur. Özellikle Ramazan ayında sahur zamanı sıcak süt ile tüketimi bölgemizde yaygındır. Bulgurlu Mantarlı Börek: Bulgurun mantar ve bol soğanla birleştirilerek yapılan çarşaf böreğidir. Mancarlı Pide: Bölgemizde her çeşit yenilebilir ota Mancar denir. Yenilebilir oltalarla yapılan bir pide türüdür. Kaymaklı Kara Lahana Sarması: Karalahanalar bulgur ve baharatla hazırlanan harç ile sarılır; pişmeden önce çiğ süt üstü kaymak ile kaynatılarak yapılır.Umaç Çorbası: Un ve su ile hazırlanan hamurun kevgirden geçirildikten sonra kurutulup; soğan, yağ ve domatesli suda kaynatılması ile yapılan yöresel bir çorbadır.Kazayağı Köftesi: Bölgemizde yetişen yenilebilir bir tür ot olan Kazayağının mücver gibi yapıldığı bir köfte türüdür.",
              2,
              4,
              context),

          makeHistoryPage(
              map_mesrutiyet,
              bal,
              "Kestane Balı",
              "Şile Kestane Balı; Şile ormanlarının 11-12 hektarlık kısmını kapsayan kestane ormanlarında her yıl Haziran ayında açan kestane çiçeklerinden salgılanan nektardan bal arısı kolonileri tarafından üretilmektedir. Kestane Balı bölge halkı için önemli bir geçim kaynağı olmakla birlikte; nesilden nesile aktarılan bir gelenek haline gelmiştir.Şile Kestane Balı Sirkesi, Şile için önemli bir değer olan Şile kestane balından üretilen geçmişi çok eskiye dayanan geleneksel bir ürünümüzdür. Haziran ayında kestane çiçeklerinden elde edilen kestane balı süzülürken alınan peteklerin ‘’sır’’ adı verilen kısmının sirke anası kullanılarak meşe fıçı ve toprak küplerde su içerisinde fermente edilmesiyle elde edilmektedir. Hem lezzeti hem kokusu ile damak tadını cezbeden Şile Kestane balı Sirkesi salatalardan sade içime kadar birçok farklı şekilde kullanıma uygundur. Şile Kestane Balı Sirkesini doğal ve geleneksel ürünlerimizin yer aldığı Şile Yeryüzü Pazarı’nda bulabilirsiniz.",
              3,
              4,
              context),

          makeHistoryPage(
              map_hacilli,
              balik,
              "Şile Palamudu Ve Deniz Mutfağı",
              "Şile Palamudu: Bahar aylarında beslenmek için Karadeniz’e çıkıp, sonbaharda Marmara’ya oradan da Çanakkale’ye kadar iner. Marmara’dan Boğaza geçmeden önce Şile bölgesinde yemlenirler. Şile bölgesi kayalıklarda yaşayan küçük balıkları ve kabuklu deniz canlıları ile zengin bir bölge olduğundan; Palamut burada kaldığı sürede büyür, yağlanır ve en lezzetli halini alır.Şile; 1 Eylül Av Yasağının da kalkmasıyla Marmara bölgesinde Palamut balığının avlanıldığı ilk limandır. Bu özelliği ile de Palamut balığı en taze şekilde İstanbul’a ulaşır. ",
              4,
              4,
              context),
        ],
      ),
    );
  }
}
