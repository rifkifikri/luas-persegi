import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppsAplocations());
}

class MyAppsAplocations extends StatefulWidget {
  const MyAppsAplocations({Key? key}) : super(key: key);

  @override
  State<MyAppsAplocations> createState() => _MyAppsAplocationsState();
}

class _MyAppsAplocationsState extends State<MyAppsAplocations> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AplicationDesain(),
    );
  }
}

class AplicationDesain extends StatefulWidget {
  const AplicationDesain({Key? key}) : super(key: key);

  @override
  State<AplicationDesain> createState() => _AplicationDesainState();
}

class _AplicationDesainState extends State<AplicationDesain> {
  @override
  Widget build(BuildContext context) {
    TextEditingController panjang = TextEditingController();
    TextEditingController lebar = TextEditingController();
     var panjang_ = int.tryParse(panjang.text);
     //assert(panjang_ is int);
     //var lebar_ = int.parse('$lebar');
    var p,p1,hasil;
    var l,l1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 3'),
      ),
      body: Form(child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('PERHITUNGAN LUAS PERSEGI', style: TextStyle(height: 5),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: panjang,
                  keyboardType: TextInputType.number,
                  onChanged: (String panjang){
                    p=panjang;
                    p1=int.parse(p);
                  },
                  decoration: new InputDecoration(
                    
                    hintText: 'masukkan Panjang',
                    label:Text('panjang'),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: lebar,
                  keyboardType: TextInputType.number,
                  onChanged: (String lebar){
                    l=lebar;
                    l1=int.parse(l);
                  },
                  decoration: new InputDecoration(
                    hintText: 'masukkan lebar',
                    label:Text('Lebar'),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Row(
                
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                        title: Text('Hasil'),
                        content: SizedBox(
                          height: 200,
                          // {lebar.text+panjang.text},
                          //child: hasil=l*p,
                          child: Text('Luas persegi yaitu ${p1*l1}'),
                        ),
                      ),);
                    }, 
                    child: Text('HITUNG')),
                  ),
                ],
              )
            ],
          ),
        ),
      ),),
    );
  }
}