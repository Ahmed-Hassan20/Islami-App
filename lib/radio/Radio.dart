import 'package:flutter/material.dart';

class radio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text('Quran Karim Radio',style: Theme.of(context).textTheme.titleMedium,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,size: 40,),SizedBox(width: 12,),
              Icon(Icons.play_arrow,size: 60,),SizedBox(width: 12,),
              Icon(Icons.skip_next,size: 40,)
            ],
          )
        ],
      ),
    );
  }
}