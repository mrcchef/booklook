import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';

class TotalCartValueWidget extends StatelessWidget {
  const TotalCartValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text("\u{20B9} 4616",
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Inclusive of Taxes",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "Breakdown",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColor.GreenColor.withOpacity(0.5),
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
