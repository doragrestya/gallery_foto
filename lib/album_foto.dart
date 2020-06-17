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
        title: Text('ALBUM', style: TextStyle(fontWeight: FontWeight.bold),),
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
                          height: 50,
                          width: 50,
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
                      subtitle: Text('12'),
                    )),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FotoPage()));
                },
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10),
          ),

          Container(
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                child: Card(
                    child: ListTile(
                      leading:
                      Icon(Icons.camera, size: 50,),
                      title: Text('Album Lainnya'),
                      subtitle: Text('0'),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
