import 'package:eman_rent_shop_web_admin/views/screens/product_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/Category_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:eman_rent_shop_web_admin/views/screens/side_bar_screens/withdrawal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSlector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;

      case VendorsScreen.routeName:
        setState(() {
          _selectedItem = VendorsScreen();
        });

        break;

      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItem = WithdrawalScreen();
        });

        break;

      case OrdersScreen.routeName:
        setState(() {
          _selectedItem = OrdersScreen();
        });

        break;

      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });

        break;

      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });

        break;

      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        sideBar: SideBar(
          items: [
            AdminMenuItem(
                title: 'Dashboard',
                icon: Icons.dashboard,
                route: DashboardScreen.routeName),
            AdminMenuItem(
                title: 'Vendors',
                icon: CupertinoIcons.person_3,
                route: VendorsScreen.routeName),
            AdminMenuItem(
                title: 'Withdrawal',
                icon: CupertinoIcons.money_dollar,
                route: WithdrawalScreen.routeName),
            AdminMenuItem(
                title: 'Orders',
                icon: CupertinoIcons.shopping_cart,
                route: OrdersScreen.routeName),
            AdminMenuItem(
                title: 'Categories',
                icon: Icons.category,
                route: CategoriesScreen.routeName),
            AdminMenuItem(
                title: 'Products',
                icon: Icons.shop,
                route: ProductScreen.routeName),
            AdminMenuItem(
                title: 'Upload Banners',
                icon: CupertinoIcons.add,
                route: UploadBannerScreen.routeName),
          ],
          selectedRoute: '',
          onSelected: (item) {
            screenSlector(item);
          },
          header: Container(
            height: 50,
            width: double.infinity,
            color: Color.fromARGB(255, 3, 126, 175),
            child: const Center(
              child: Text(
                'RenTOP Store Panel',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: Color.fromARGB(255, 3, 126, 175),
            child: const Center(
              child: Text(
                'footer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: _selectedItem);
  }
}

//@override
//  Widget build(BuildContext context) {
   // return AdminScaffold(
    //    backgroundColor: Colors.white,
      //  sideBar: SideBar(
       //   items: [
          //  AdminMenuItem(
            //    title: 'Dashboard',
             //   icon: Icons.dashboard,
             //s   route: DashboardScreen.routeName),