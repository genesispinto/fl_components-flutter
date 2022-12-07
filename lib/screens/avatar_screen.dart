import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Avatars')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.green[900],
              child: const  Text('SL')
            ),
          )
        ],
        ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.vKx52aoC9YgrzE50kaH6WQHaHa?pid=ImgDet&rs=1'),
         ), 
      ),
    );
  }
}