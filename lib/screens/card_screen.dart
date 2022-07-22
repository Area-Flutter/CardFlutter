import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card App Bar'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              name: 'Calle Nocturna',
              imageUrl:
                  'https://blog.hubspot.es/hubfs/mejoresbancosdeimagenespixabay.jpeg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            // name: 'Montaña',
            imageUrl:
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            // name: 'Otra Montaña',
            imageUrl:
                'https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=273%2C0%2C2639%2C1379&q=45&auto=format&w=926&fit=clip',
          ),
        ],
      ),
    );
  }
}
