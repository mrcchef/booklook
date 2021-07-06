import 'package:flutter/material.dart';
import 'package:look_book/modal/profile_option.dart';

class ProfileOptionsListWidget extends StatelessWidget {
  final List<ProfileOption> profileOptionList;

  ProfileOptionsListWidget({required this.profileOptionList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 200,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            height: 5,
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      profileOptionList[index].iconData,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    profileOptionList[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: profileOptionList.length,
      ),
    );
  }
}
