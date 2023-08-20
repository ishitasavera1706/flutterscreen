import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callhistory extends StatelessWidget {
  const Callhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Outlet Across India',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.redAccent,
      ),
      body:Container(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.green,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListTile(
                          leading: Image.asset('assets/r.png'),
                          title: const Text('Rajkot,Gujrat',style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),),
                          subtitle: const Text('Kalavad Main Road, Opposite cosmoplex'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/abc.png'),
                          title: const Text('Ahmedabad,Gujrat',style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),),
                          subtitle: const Text('S.G Highway,near Nirma University '),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/b.png'),
                          title: const Text('Baroda,Gujrat',style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                          ),),
                          subtitle: const Text('Vaghodiya main Road,near Lapinoz pizza'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/s.png'),
                          title: const Text('Surat,Gujrat',style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),),
                          subtitle: const Text('Near Diamond burge,hjira'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 600,
                  height: 100,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/j.png'),
                          title: const Text('Jamnagar',style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),),
                          subtitle: const Text('Satrasta ,near Bus Stand'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}