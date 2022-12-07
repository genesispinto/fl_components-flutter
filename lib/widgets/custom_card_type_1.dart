import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(

        children: [
         const ListTile(
            leading: Icon(Icons.tiktok, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Udemy proporciona herramientas para que los usuarios puedan crear un curso, promocionarlo y ganar dinero con gastos de inscripción de los estudiantes.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed:() {},
               // style: TextButton.styleFrom(foregroundColor: AppTheme.primary), 
                child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {},
                //style: TextButton.styleFrom(foregroundColor: AppTheme.primary), 
                child: const Text('Ok'),
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}