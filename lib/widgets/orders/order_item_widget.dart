import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/ic_order_bicycle.png', height: 20, width: 20,),
                  const SizedBox(width: 10,),
                  Container(
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(24, 170, 19, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: const Center(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Доставить: сегодня 16:00 — 18:00', style: TextStyle(fontSize: 13, color: Colors.white),),
                    )),
                  )
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                children: const [
                  Expanded(child: Text('Заказ №242795', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                  Text('158 ₸', style: TextStyle(fontSize: 13),)
                ],
              ),
              const SizedBox(height: 2,),
            ],
          )
        ),
      ),
    );
  }
}
