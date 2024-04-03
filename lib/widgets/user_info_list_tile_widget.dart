import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_dashboard/utils/app_styles.dart';


class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.image, required this.name, required this.email});

  final String image, name, email;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(name,
        style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(email,
        style: AppStyles.styleRegular12,
        ),
      
      ),
    );
  }
}