import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Заказ #242795'),
                  Text('Время заказа 22:00'),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: Text('Улица Сауран, д. 15/4, кв 12, этаж 2, домофон 12')),
                  Text('1 товар'),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('Курьер: Карасев Данил'),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(181, 227, 76, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: const Center(child: Text('Доставить сейчас', style: TextStyle(fontSize: 12),)),
                  ),
                  const Text('158.4 T'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
