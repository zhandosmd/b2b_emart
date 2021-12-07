import 'package:emart/widgets/common_widgets/app_colors.dart';
import 'package:flutter/material.dart';

import 'orders/orders_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    OrdersWidget(),
    Text('', style: optionStyle,),
    Text('', style: optionStyle,),
    Text('', style: optionStyle,),
  ];

  void _onItemTapped(int index) {
    setState(() {_selectedIndex = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.main,
          onTap: _onItemTapped,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic_orders.png', height: 24, width: 24,),
              activeIcon: Image.asset('assets/images/ic_orders.png', height: 24, width: 24, color: AppColors.main,),
              label: 'Заказы',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic_form.png', height: 24, width: 24,),
              activeIcon: Image.asset('assets/images/ic_form.png', height: 24, width: 24, color: AppColors.main,),
              label: 'Наличие',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic_profile.png', height: 24, width: 24,),
              activeIcon: Image.asset('assets/images/ic_profile.png', height: 24, width: 24, color: AppColors.main,),
              label: 'Поставки',
            ),
          ],
        ),
      ),
    );
  }
}
