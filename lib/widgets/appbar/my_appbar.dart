import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icommerce/widgets/text/my_text.dart';

class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final bool? showBackButton;
  final bool? showCartButton;
  final double? fontSize;
  final FontWeight? fontWeight;
  const MyAppbar(
      {Key? key,
      required this.title,
      this.icon,
      this.showBackButton,
      this.fontSize,
      this.fontWeight,
      this.showCartButton})
      : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppbarState extends State<MyAppbar> {
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.white,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: MyText(
        text: widget.title,
        color: Colors.black,
        fontSize: widget.fontSize ?? 18,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
      ),
      leading: widget.showBackButton == true
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            )
          : Container(),
      actions: [
        widget.showCartButton == true
            ? Badge(
                position: BadgePosition.topStart(top: 0, start: 0),
                badgeColor: Colors.black,
                badgeContent: const FittedBox(
                  child: MyText(
                    text: '3',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                  },
                ),
              )
            : Container(),

        // Show Circular Avatar
      ],
    );
  }
}
