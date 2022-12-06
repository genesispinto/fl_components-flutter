import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';
class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://files.websitebuilder.prositehosting.co.uk/cc/6d/cc6d16bc-e800-4f83-be1c-cbc5076f1ea5.jpg',
            ),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://globalgrasshopper.com/wp-content/uploads/2014/06/Stunning-Snowdonia-National-Park-768x513.jpg',
            textImage: 'Que hermoso'),
          SizedBox(height: 10,),
          CustomCardType2(
            imageUrl: 'https://th.bing.com/th/id/R.e2c27a9cf8081b6fc9f7bdb18ee431a5?rik=ZBOgLHQCTH9Z4A&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f01%2f154311-landscape.jpg&ehk=fRaNNq1T7WkAI%2b5wWAkV%2bTi45b%2fNc7ao4KyAfZZdevM%3d&risl=&pid=ImgRaw&r=0',
            textImage: 'Aqui tambien quiero'),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://th.bing.com/th/id/R.d0e947135338c213a5db8655e044a308?rik=Ol0oLTP3%2ferzWw&pid=ImgRaw&r=0',
          textImage: ':ooooooooo'),
          SizedBox(height: 10,),

        ],
      )
    );
  }
}

