import 'package:flutter/material.dart';
import 'package:galery_foto/foto.dart';

class AlbumPage extends StatefulWidget {
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALBUM'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                child: Card(
                    child: ListTile(
                      leading:
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                  ('images/rojolele.jpg'),
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      title: Text('Camera'),
                      subtitle: Text('11 Foto'),
                    )),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FotoPage()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
