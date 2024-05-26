import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StockItemComponent extends StatelessWidget {
  const StockItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.infinity,
      child: GestureDetector(
        onTap: (){
          context.push('/company');
        },
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/google.png'),width: 48, height: 48,),
                SizedBox(width: 8,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GOOGLE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    SizedBox(height: 4,),
                    Text('Alphabet', style: TextStyle(fontSize: 12, color: Color.fromRGBO(95, 103, 111, 1)),),
                  ],
                )),
                Column(children: [
                  Text('\$2,300', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  SizedBox(height: 4,),
                  Text('2,35%',style: TextStyle(fontSize: 12, color: Color.fromRGBO(25  , 175, 0, 1))),
                ],)
              ],
            ),
            SizedBox(height: 16,),
            Container(
              color: const Color.fromRGBO(230, 230, 230, 1),
              height: 1,
              width: double.infinity,
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
