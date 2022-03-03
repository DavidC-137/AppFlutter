import 'package:flutter/material.dart';

 class DatosStack extends StatelessWidget {
   const DatosStack({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('Datos Stack'),
         backgroundColor: Color.fromARGB(255, 144, 249, 205),
       ),
       body: Center(
             child: SizedBox (
             width: 300.0,
             height: 300.0,
            child: Center(
            child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
             fit: StackFit.expand,
            overflow: Overflow.visible,
            children:<Widget>[
          Container(
          width: 300.0,
          height: 300.0,
           padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage('https://scontent-qro1-1.xx.fbcdn.net/v/t1.6435-9/73388448_749390715485216_3698947138076540928_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=pCDJy4JpItkAX-ISJLT&_nc_ht=scontent-qro1-1.xx&oh=00_AT_ji3czEXFpW8j1S0iYp5nXktVWpJEzeEi6Fs5OC_PQ1g&oe=6243D887')
                  )
                ),
         ),
           Positioned(
           top: 170.0,
           left: 70.0,
           child: Container(
          width: 180.0,
          height: 20.0,
          child: const Text('David Zavala Ugalde',
          style:
          TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                   ) 
                 ) ,
           Positioned(
           top: 230.0,
           left: 81.0,
           child: Container(
          width: 150.0,
          height: 50.0,
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 2, 96, 119)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              )
            ]),
                   ) 
                 ) 
        ], 
       ), 
      ),
     ),
    ),
   );
  }
     



  Widget stackSinPos(){
    return Center(
         child: SizedBox(
           width: 300.0,
           height: 300.0,
           child: Center(
             child: Stack(
               children:<Widget> [
                 Container(

                   width: 300.0,
                   height: 300.0,
                   color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Uno',
                  style:
                    TextStyle(color: Colors.white)),
                 ),


                 Container(
                   width: 250.0,
                   height: 250.0,
                   color: Color.fromARGB(255, 54, 244, 187),
                   alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Dos',
                  style:
                    TextStyle(color: Colors.white)),
                 ),


                 Container(
                   width: 200.0,
                   height: 200.0,
                   //color: Color.fromARGB(255, 193, 244, 54),
                   alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage('https://scontent-qro1-1.xx.fbcdn.net/v/t1.6435-9/73388448_749390715485216_3698947138076540928_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=pCDJy4JpItkAX-ISJLT&tn=GaPdKXCR_hAF7x6v&_nc_ht=scontent-qro1-1.xx&oh=00_AT__x0ZtdzpRKW0Y7VY-jxW1rVT8kIA3Xwnk3Y8xlrCpFA&oe=6243D887')
                    )
                    ),
                  child: const Text
                  ('Tres',
                  style:
                    TextStyle(color: Colors.black)),
                 ),
                 
               ],
             ),
           ),
         ),
       );
  }
 }