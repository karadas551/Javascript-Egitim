import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



bool isRememberMe = false;

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //  Yükseklik
      height: 300,
      //  Renk
      color: Color.fromARGB(255, 255, 0, 0),
      //  Hizalama
      //  İçten boşluk
      padding: EdgeInsets.all(15),
      //  Dıştan boşluk
      margin: EdgeInsets.all(10),
      //  Container içerisine
      //  child: parametresi ile başka herhangi bir widget eklenebilir,
      //  o widget Container içerisinde görüntülenir.
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/Adsız.png",
              width: 200,
              height: 80,
            ),
            RaisedButton(
              child: Text(
                  "                                       Anasayfa                                       "),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GirisSayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text(
                  "                               Kullanıcı Yönetimi                               "),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KullaniciYonetimi()),
                );
              },
            ),
            RaisedButton(
              child: Text(
                  "                                      Mağazalar                                      "),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Magazalar()),
                );
              },
            ),
            RaisedButton(
              child: Text(
                  "                                 Kullanıcı Bilgileri                                 "),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KullaniciBilgileri()),
                );
              },
            ),
            Text(
              '',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 15,
              ),
            ),
            Text(
              'DUYURULAR',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 18,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 15,
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 3,
              ),
            ),
            new Container(
              height: 2,
              color: Colors.black,
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              'Bayramda izin almak İsteyenler, 1 hafta öncesinden bilgilendirmesini yaparak izine ayrılacaklardır.                13/03/2022',
              style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 3,
              ),
            ),
            new Container(
              height: 2,
              color: Colors.black,
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              'Bu hafta illerde genel olarak denetim yapılacaktır.                   19/03/2022',
              style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
            ),
            Text(
              '',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 18,
              ),
            ),
            new Container(
              height: 2,
              color: Colors.black,
            ),
            Text(
              'AFİŞLER',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 18,
              ),
            ),
            Image.asset(
              "assets/images/1.jpg",
              width: 300,
              height: 400,
            ),
            Image.asset(
              "assets/images/2.jpg",
              width: 300,
              height: 400,
            ),
            Image.asset(
              "assets/images/3.jpg",
              width: 300,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}

class KullaniciYonetimi extends StatelessWidget {
  const KullaniciYonetimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //  Yükseklik
      height: 300,
      //  Renk
      color: Color.fromARGB(255, 255, 0, 0),
      //  Hizalama
      //  İçten boşluk
      padding: EdgeInsets.all(15),
      //  Dıştan boşluk
      margin: EdgeInsets.all(10),
      //  Container içerisine
      //  child: parametresi ile başka herhangi bir widget eklenebilir,
      //  o widget Container içerisinde görüntülenir.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/Adsız.png",
            width: 200,
            height: 80,
          ),
          RaisedButton(
            child: Text(
                "                                       Anasayfa                                       "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GirisSayfasi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                  Kullanıcılar                                  "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciYonetimi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                      Mağazalar                                      "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Magazalar()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                 Kullanıcı Bilgileri                                 "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciBilgileri()),
              );
            },
          ),
           Text("ADI                    SOYADI                   GÖREVİ",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           ),
           ),
           Text("Metin Can             Şimşek                  Yönetici",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Gökhan                  Kantarcı                 Müdür",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Raif                    Kaser                İl Yöneticisi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Azizcan             Aras              Mağaza Müdürü",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Ömer                  Krmn           Mağaza Görevlisi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Kadir                 Özütürk            Mağaza Görevlisi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Ömer                  Altın              Mağaza Görevlisi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Harun                  Kömekçi                 Tır Şoförü",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Hidayet                   Terzi                 Tır Şoförü",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
        ],
      ),
    );
  }
}

class Magazalar extends StatelessWidget {
  const Magazalar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //  Yükseklik
      height: 300,
      //  Renk
      color: Color.fromARGB(255, 255, 0, 0),
      //  Hizalama
      //  İçten boşluk
      padding: EdgeInsets.all(15),
      //  Dıştan boşluk
      margin: EdgeInsets.all(10),
      //  Container içerisine
      //  child: parametresi ile başka herhangi bir widget eklenebilir,
      //  o widget Container içerisinde görüntülenir.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
                    Image.asset(
            "assets/images/Adsız.png",
            width: 200,
            height: 80,
          ),
          RaisedButton(
            child: Text(
                "                                       Anasayfa                                       "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GirisSayfasi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                               Kullanıcı Yönetimi                               "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciYonetimi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                      Mağazalar                                      "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Magazalar()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                 Kullanıcı Bilgileri                                 "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciBilgileri()),
              );
            },
          ),
           Text("Mağaza         Görevliler            Ürün Temin      Tır Şoförü",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           ),
           ),
           Text("Aksaray     Gökhan Kantarcı    13/03/2022    Harun Kömekçi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Aksaray          Ömer Krmn     03/03/2022    Hidayet Terzi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Aksaray      Kadir    Özütürk      22/02/2022   Harun Kömekçi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Aksaray        Ömer Altın     07/03/2022     Hidayet Terzi",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
        ],
      ),
    );
  }
}

class KullaniciBilgileri extends StatelessWidget {
  const KullaniciBilgileri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //  Yükseklik
      height: 300,
      //  Renk
      color: Color.fromARGB(255, 255, 0, 0),
      //  Hizalama
      //  İçten boşluk
      padding: EdgeInsets.all(15),
      //  Dıştan boşluk
      margin: EdgeInsets.all(10),
      //  Container içerisine
      //  child: parametresi ile başka herhangi bir widget eklenebilir,
      //  o widget Container içerisinde görüntülenir.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
                    Image.asset(
            "assets/images/Adsız.png",
            width: 200,
            height: 80,
          ),
          RaisedButton(
            child: Text(
                "                                       Anasayfa                                       "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GirisSayfasi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                               Kullanıcı Yönetimi                               "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciYonetimi()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                      Mağazalar                                      "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Magazalar()),
              );
            },
          ),
          RaisedButton(
            child: Text(
                "                                 Kullanıcı Bilgileri                                 "),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const KullaniciBilgileri()),
              );
            },
          ),
           Text("Mağaza Görevlisi       Mağaza                    Adres                            Telefon Numarası",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           ),
           ),
           Text("Gökhan Kantarcı        Aksaray       Aksaray/Merkez/Hacılar mah.       05357216314",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Ömer Krmn        Aksaray       Aksaray/Merkez/Tacin mah.        05435168324",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Kadir Özütürk        Aksaray       Aksaray/Merkez/Coğlaki mah.       05387652757",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Ömer Altın       Aksaray       Aksaray/Merkez/Coğlaki mah.       05379477174",
           style: TextStyle(
            color: Colors.black,  
                fontSize: 13,
           )
           ),
           Text("Harun Kömekçi        Aksaray       Aksaray/Merkez/Tacin mah.        05438765579",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
           Text("Hidayet Terzi        Aksaray       Aksaray/Merkez/Hacılar mah        05468765681",
           style: TextStyle(
            color: Colors.black,
                fontSize: 13,
           )
           ),
        ],
      ),
    );
  }
}


