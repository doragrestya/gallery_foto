import 'package:flutter/material.dart';

class FotoPage extends StatefulWidget {
  @override
  _FotoPageState createState() => _FotoPageState();
}

class _FotoPageState extends State<FotoPage> {
  List<Container> daftarGambar = new List();

  var jenisGambar = [
    {"nama": "Beras Cokelat", "gambar": "cokelat.jpg"},
    {"nama": "Beras Hitam", "gambar": "hitam.jpg"},
    {"nama": "Beras IR42", "gambar": "ir42.jpg"},
    {"nama": "Beras IR64", "gambar": "ir64.jpg"},
    {"nama": "Beras Ketan", "gambar": "ketan.jpg"},
    {"nama": "Beras Mentik Wangi Susu", "gambar": "mentik_wangi_susu.jpg"},
    {"nama": "Beras Merah", "gambar": "merah.jpg"},
    {"nama": "Beras Pandan Wangi", "gambar": "pandan_wangi.jpg"},
    {"nama": "Profile", "gambar": "profile.png"},
    {"nama": "Ballons", "gambar": "ballons.jpg"},

  ];

  _buatDataList() async {
    for (var i = 0; i < jenisGambar.length; i++) {
      final jenisnya = jenisGambar[i];
      final String gambar = jenisnya["gambar"];

      daftarGambar.add(new Container(
        child: Column(
          children: <Widget>[
            Center(
              child: new Hero(
                tag: jenisnya['nama'],
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Image.asset(
                      "images/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(image: gambar)));
                  },
                ),
              ),
            ),
          ],
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _buatDataList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOTO'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarGambar,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final String image;
  Detail({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETAIL'),
        centerTitle: true,
      ),
      body: Image.asset('images/$image', height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,),backgroundColor: Colors.black,
    );
  }
}
