import 'package:emart/models/order.dart';
import 'package:emart/widgets/orders/order_item_widget.dart';
import 'package:flutter/material.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({Key? key}) : super(key: key);

  @override
  _OrdersWidgetState createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  List<Order> orders = [
    Order(id: 242795, sizeProducts: 1, address: 'Улица Сауран, д. 15/4, кв 12, этаж 2, домофон 12',
        courierName: 'Карасев Данил', price: '158.4', time: '21:54'),
    Order(id: 242800, sizeProducts: 1, address: 'Улица Сауран, д. 15/4, кв 12, этаж 2, домофон 12',
        courierName: 'Карасев Данил', price: '158.4', time: '22:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: const [
            SizedBox(height: 20,),
            OrderItemWidget(),
            SizedBox(height: 20,),
            OrderItemWidget(),
            SizedBox(height: 20,),
            OrderItemWidget(),
            SizedBox(height: 20,),
            OrderItemWidget(),
            SizedBox(height: 20,),
            OrderItemWidget(),
          ],
        ),
      ),
    );
  }
}
