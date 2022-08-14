import 'package:flutter/material.dart';

class s extends StatefulWidget {
  @override
  State<s> createState() => _sState();
}

class _sState extends State<s> {
  int counter =1;
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()
                {
                setState(() {
                  counter++;
                  print(counter);
                });

                }, child: Text('Plus',style: TextStyle(fontSize: 40),), ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('$counter',style: TextStyle(
                  fontSize: 80,fontWeight: FontWeight.w900,
                ),),
              ),
            ),            TextButton(onPressed: ()
            {
             setState(() {
               counter--;
               print(counter);
             });

            }, child: Text('mines',style: TextStyle(fontSize: 40),), ),
          ],
        ),
      ),
    );
  }
}
