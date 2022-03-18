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
              "Ekşi mayalı köy ekmeği, Şile köylerinde çokça yapılan ve tüketilmekte olan bir yöresel ekmek çeşididir. Yerleşik köy hayatının devam ettiği Şile’de, köylüler kendi yaptıkları yahut büyüklerinden miras kalan ekşi mayayı korumakta, un ile besleyerek sürdürebilirliğini sağlamaktadırlar.\n\nGeleneksel yöntemlerle yapılan ekşi maya ve Kızılca buğdayından elde edilen un ile yoğurup fermente edilen hamur, gökçe çalısıyla yakılan ateş tuğlasından yapılmış fırınlarda pişirilerek eşsiz bir lezzete dönüşmektedir. Hacim olarak büyük ve görüntüsü göze hitap eden, aynı zamanda el emeğinin tadı ve geleneksel yapının kokusunu barındıran ekşi mayalı köy ekmeği, Şile bölgesi kültürel mirası içerisinde önemli bir yere sahiptir. \n\nÖzellikle bahar ve yaz aylarında hemen hemen her mahallede yanan köy fırınlarını görebilir, bu sağlıklı ve geleneksel lezzeti tadımlayabilirsiniz. Her Cuma ve Pazar günü kurulan Şile Yeryüzü Pazarı’nda geleneksel ekmeğimizin yanı sıra, balkabaklı ve pancarlı ekmeklerimizde tezgâhlarda yer almaktadır.",
              1,
              4,
              context),
          makeHistoryPage(
              map_zekimuren,
              gastro,
              "Yöresel Lezzetler",
              "Şile sahip olduğu doğal güzellikler ve devam eden yerleşik köy hayatıyla İstanbul’un yanı başında geleneksel lezzetlerini yaşatmaya ve sunmaya devam ediyor. Şile mutfağı özellikle son yıllarda turizm hareketliliklerinde çok daha fazla yer tutmaya başlayan gastronomi turizmi açısından farklı zenginlikler sunmaktadır.\n\nÖzellikle Şile Yeryüzü Pazarı’nda düzenlenen etkinlikler pek çok ünlü şefi misafir etmiş, Kestane Balı, Lakerda, Yöresel Pide ve Börekler oldukça beğenilmiştir. Şile Kestane Balı lezzetiyle Ark Of Taste-Nuh’un Ambarı listesine adını yazdırmıştır. Şile Belediyesi tarafından Şile Kestane Balı’nın coğrafi işaretli ürün tescili alması için sürdürülen çalışmalar devam etmektedir.\n\nGastronomi kültürüne önem veren herkesi ilçemizde misafir etmekten mutluluk duyuyoruz.\n\nBilik: Ekşi mayalı ekmek hamuru ince uzun halde pişirildikten sonra küp küp kesilir ve tekrar fırınlanarak kurutulur. Özellikle Ramazan ayında sahur zamanı sıcak süt ile tüketimi bölgemizde yaygındır. \n\nBulgurlu Mantarlı Börek: Bulgurun mantar ve bol soğanla birleştirilerek yapılan çarşaf böreğidir.\n\nBalkabaklı Börek: Balkabağının rendelenip şekerle karıştırılarak yapıldığı gül böreğidir.\n\nMancarlı Pide: Bölgemizde her çeşit yenilebilir ota Mancar denir. Yenilebilir oltalarla yapılan bir pide türüdür.\n\nKaymaklı Kara Lahana Sarması: Karalahanalar bulgur ve baharatla hazırlanan harç ile sarılır; pişmeden önce çiğ süt üstü kaymak ile kaynatılarak yapılır.\n\nÖre Tatlısı: Süt, şeker ve darı ile yapılan yöresel bir tatlıdır.\n\nUmaç Çorbası: Un ve su ile hazırlanan hamurun kevgirden geçirildikten sonra kurutulup; soğan, yağ ve domatesli suda kaynatılması ile yapılan yöresel bir çorbadır.\n\nDüdük Makarnası: Un, su ve tuz ile hamur yapılır. Yufka gibi açıldıktan sonra kare kesilir ve düdük şeklinde kıvrılır. Makarna haşlandıktan sonra tereyağı ve peynir ile servis edilir. \n\nYumurtalı Makarna: Yumurtalı harcın hamur ile mantı gibi kapatılarak yapıldığı bir yöresel lezzettir. Ağva bölgemizde çokça yapılır.\n\nKazayağı Köftesi: Bölgemizde yetişen yenilebilir bir tür ot olan Kazayağının mücver gibi yapıldığı bir köfte türüdür.\n\nYenilebilir Otlar :\n• Kış dönemi  Doğal Otlar: Kaz ayağı, ebe gömeci, ısırgan, hindibağ, kuş otu, su teresi, bostan mancarı, turp otu, evelik, hodan \n• Yaz Dönemi Doğal otlar: semizotu, kekik, defne, adaçayı, ıhlamur, asma yaprağı, rezene, biberiye",
              2,
              4,
              context),

          makeHistoryPage(
              map_mesrutiyet,
              bal,
              "Kestane Balı",
              "İlçemizin en önemli tarımsal üretim değerlerinden ve lezzetlerinden bir tanesi de, adını Nuh’un Ambarı listesine yazdırmış olan Şile Kestane Balı’dır. Aroması ve sahip olduğu besin değerleriyle farklılaşan bu balı mutlaka denemelisiniz.\n\nŞile’de Kestane Balı\n\nŞile Kestane Balı; Şile ormanlarının 11-12 hektarlık kısmını kapsayan kestane ormanlarında her yıl Haziran ayında açan kestane çiçeklerinden salgılanan nektardan bal arısı kolonileri tarafından üretilmektedir. Kestane Balı bölge halkı için önemli bir geçim kaynağı olmakla birlikte; nesilden nesile aktarılan bir gelenek haline gelmiştir.\n\nŞile bölgesinde yaklaşık 300 aile arıcılık faaliyetinde bulunmaktadır. Bu ailelerin yarısı 30’un üzerinde kovana sahip olan profesyonel arıcılardır. 2014-Eylül ayında İtalya’nın Torino kentinde gerçekleşen Terra Madre Salone Del Gusto Festivalinde Şile Kestane Balı da tüm dünya lezzetlerinin isimlerinin yer aldığı Ark of Taste (Nuh’un Ambarı) listesinde yerini almıştır.\n\nŞile Kestane Balının Özellikleri\nŞile Kestane Balı hem tıbbi destek amaçlı hem de sofralık olarak kullanılabilen bir baldır. Koyu kahve renkli, tatlı keskin ve hafif buruk bir tada sahiptir. Şile bölgesinde üretilen kestane balları yüksek miktarda kestane poleni ihtiva ettiğinden ve orman gülü (Rhododendron) bitkisi kestaneden farklı zamanda açtığından, diğer Karadeniz kıyısı kestane ballarından farklı bir bileşime ve aromaya sahip olmaktadır.\n\nŞile Kestane Balı Sirkesi\nŞile Kestane Balı Sirkesi, Şile için önemli bir değer olan Şile kestane balından üretilen geçmişi çok eskiye dayanan geleneksel bir ürünümüzdür. Haziran ayında kestane çiçeklerinden elde edilen kestane balı süzülürken alınan peteklerin ‘’sır’’ adı verilen kısmının sirke anası kullanılarak meşe fıçı ve toprak küplerde su içerisinde fermente edilmesiyle elde edilmektedir. Şile kestane balı sirkesi İtalya’da Slow Food Nuh’un Ambarı(Ark of Taste) korunması gereken ürünler listesinde yer almaktadır.\n\nHem lezzeti hem kokusu ile damak tadını cezbeden Şile Kestane balı Sirkesi salatalardan sade içime kadar birçok farklı şekilde kullanıma uygundur. Şile Kestane Balı Sirkesini doğal ve geleneksel ürünlerimizin yer aldığı Şile Yeryüzü Pazarı’nda bulabilirsiniz.",
              3,
              4,
              context),

          makeHistoryPage(
              map_hacilli,
              balik,
              "Şile Palamudu Ve Deniz Mutfağı",
              "Şile, geçmişten günümüze gerçek bir balıkçı kasabasıdır. Karadeniz’in bereketi ilçenin adıyla özdeşleşen Şile Palamudu markasını oluşturmuştur. Günümüzde de ilçenin önemli bir gelir kaynağı olan balıkçılık, dillere destan gün batımına doğru konuşlanmış restoranlarında çoğalmasıyla ilçe genelinde ciddi bir turizm hareketliliği oluşturmaktadır.\n\nTaze balığın İstanbul’daki önemli adreslerinden biri olan ilçemizde deniz mutfağının tüm lezzetleriyle keyifli bir deneyim yaşayabilirsiniz.\n\nŞile Palamudu: Karadeniz ve Marmara’nın en ünlü balığıdır.  Bahar aylarında beslenmek için Karadeniz’e çıkıp, sonbaharda Marmara’ya oradan da Çanakkale’ye kadar iner. Sürü halindeki uskumru, kolyoz, istavrit, hamsi, sardalya gibi balıklarla beslenir. Marmara’dan Boğaza geçmeden önce Şile bölgesinde yemlenirler. Şile bölgesi kayalıklarda yaşayan küçük balıkları ve kabuklu deniz canlıları ile zengin bir bölge olduğundan; Palamut burada kaldığı sürede büyür, yağlanır ve en lezzetli halini alır.\n\nŞile; 1 Eylül Av Yasağının da kalkmasıyla Marmara bölgesinde Palamut balığının avlanıldığı ilk limandır. Bu özelliği ile de Palamut balığı en taze şekilde İstanbul’a ulaşır.\n\Çingene palamudu iken tavada; Palamut halini aldığında ise takoz şeklinde tavada ya da kelebek şeklinde ızgarada pişirilmesi uygundur.\n\nLakerda: Torik balığı alınır ve temizlendikten sonra 3 parçaya ayrılır. Buzlu suda kanı iyice gidene kadar 3-4 gün bekletilir. Sonra süzülüp; kurutulur ve tuza yatırılır. 10 gün tuzda bekleyen dilimler tekrar soğuk suda 3-4 gün bekletildikten sonra yenmeye hazır olur.\n\nMaydanozlu Palamut: Palamut balığının temizlenip kılçıkları alınır, kuru soğan yağ ile biraz rengi değişene kadar tavada pişirilir, az miktarda domates rendelenir ve bol maydanozla harç hazırlanıp içine istenilen baharat, yumurta ve galeta unu ekleyerek yağlanmış tepsiye döşenir. Bıçakla kesildikten sonra fırına verilir.  ",
              4,
              4,
              context),
        ],
      ),
    );
  }
}
