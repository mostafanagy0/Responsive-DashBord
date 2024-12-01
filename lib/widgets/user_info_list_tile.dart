import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dashbord/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.titel,
      required this.subTitel});
  final String image, titel, subTitel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          titel,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subTitel,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
