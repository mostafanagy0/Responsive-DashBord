import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imagecolor,
  });
  final String image;
  final Color? imageBackgroundColor, imagecolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imagecolor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imagecolor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
