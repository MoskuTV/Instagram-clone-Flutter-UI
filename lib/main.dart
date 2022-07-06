import 'package:flutter/material.dart';

 void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends  StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
        ),
        body: InstagramPost()
      ),
    );
  }
}

class InstagramPost extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        //cabecera
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: 
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            Row(
              children: <Widget>[
                ClipOval(
                  child:Image.network(
              'https://i.pinimg.com/474x/59/9e/69/599e699701873573cef4ebcb418d6557.jpg',
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover
            ),
          ),
                
            SizedBox(width: 13.0,),


            Text('mosku',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ) ),

              ],
            ),
            
            Icon(Icons.more_vert)

            
          ],
        )
        ),
        

        //Imagen del post 
        Image.network('https://i.pinimg.com/originals/74/eb/1f/74eb1fcdbbeaffa288e4c28177e8c7ec.jpg'),
        
        //Iconos de interaccion con el usuario 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                children: [
                  Image.asset('icons/icono_corazon.png', width: 35.0, height: 35.0,),
                  SizedBox(width: 10.0,),
                  Image.asset('icons/icono_mensaje.png', width: 35.0, height: 35.0,),
                  SizedBox(width: 10.0,),
                  Image.asset('icons/icono_enviar.png', width: 35.0, height: 35.0,),

                ],
                ),
              
                
                
              Image.asset('icons/icono_guardar.png', width: 35.0, height: 35.0,),
              //Likes
              
            ],
            
        ) 
        ,),
        Row(children: <Widget>[
          SizedBox(width: 5.0,),
                   ClipOval(
                  child:Image.network(
              'https://i.pinimg.com/474x/59/9e/69/599e699701873573cef4ebcb418d6557.jpg',
              width: 30.0,
              height: 30.0,
              fit: BoxFit.cover
            ),
          ),
            SizedBox(width: 15.0,),
            Text('Les gusta a'),
            SizedBox(width: 5.0,),
            Text('mosku',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(width: 5.0,),
            Text('y'),
            SizedBox(width: 5.0,),
            Text('999,9999,999 mas',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),

              ],)
        
      ],
    );
  }
}