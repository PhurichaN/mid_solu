import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mid_solu/utils/my_converter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _lablelist = [
    'C to F',
    'C to K',
    'F to C',
    'F to K',
    'K to C',
    'K to F',
  ];
  var _feetBackText = '';
  final _controler = TextEditingController();

  void _handleClickButton(int i) {
    var intput = _controler.text;
    var temp = double.tryParse(intput);
    if(temp == ''){
      setState(() {
        _feetBackText = 'Please enter a value to convert.';
      });
      return;
    }
    if (temp == null) {
      setState(() {
        _feetBackText = 'Erorr';
      });
      return;
    }
    switch (i) {
      case 0:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.C2F(temp!);
          setState(() {
            _feetBackText = '$temp C = $value F';
          });
        //c to f
        break;
      case 1:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.C2K(temp!);
        setState(() {
          _feetBackText = '$temp C = $value K';
        });
        //c to f
        break;
      case 2:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.F2C(temp!);
        setState(() {
          _feetBackText = '$temp F = $value C';
        });
        //c to f
        break;
      case 3:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.F2K(temp!);
        setState(() {
          _feetBackText = '$temp F = $value K';
        });
        //c to f
        break;
      case 4:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.K2C(temp!);
        setState(() {
          _feetBackText = '$temp K = $value C';
        });
        //c to f
        break;
      case 5:
        var intput = _controler.text;
        var temp = double.tryParse(intput);
        double value = MyConverter.K2F(temp!);
        setState(() {
          _feetBackText = '$temp K = $value F';
        });
        //c to f
        break;
    }
    //print('Buttont Clicked!');
  }

  Widget _buildbutton(int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            _handleClickButton(i);
          },
          child: Text(_lablelist[i],
              style: GoogleFonts.itim(
                fontSize: 30.0,
                color: Colors.teal,
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    //var mylist = <Widget>[];
    //mylist.add(buildbutton());
    //mylist.add(buildbutton());
    var mylist = [0, 1];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'แปลงอุณหภูมิ',
              style: GoogleFonts.itim(
                fontSize: 30.0,
                color: Colors.teal,
                fontWeight: FontWeight.w600,
                //fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              width: 1100.0,
              height: 300.0,
              color: Colors.green.withOpacity(0.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _controler,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // for(var i in mylist)
                      //   buildbutton()
                      _buildbutton(0),
                      _buildbutton(1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //for (var s in ['F to C', 'F to K']) _buildbutton(s)
                      _buildbutton(2),
                      _buildbutton(3),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildbutton(4),
                      _buildbutton(5),
                    ],
                  )
                ],
              ),
            ),
            Text(
              _feetBackText,
              style: GoogleFonts.itim(
                fontSize: 30.0,
                color: Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
