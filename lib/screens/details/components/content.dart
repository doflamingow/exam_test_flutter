import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/models/Product.dart';
import 'package:test2/screens/details/components/review.dart';
import 'package:test2/screens/widgets/photo_circle.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';
import 'package:test2/utils/constants.dart';

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Vendor",
          style: Theme.of(context).textTheme.button.copyWith(
              color: green,
              fontSize: FontSize.s12,
              fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: Sizes.s10),
                    height: Sizes.s45,
                    width: Sizes.s45,
                    child: PhotoChircle(url: "assets/images/vendor.png")),
                SizedBox(width: Sizes.s15),
                Text(
                  "Eiger Store",
                  style: Theme.of(context).textTheme.button.copyWith(
                      color: green,
                      fontSize: FontSize.s15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: blue,
                  size: Sizes.s12,
                ),
                SizedBox(width: Sizes.s9),
                Text(
                  "5.0 | 200 Terjual",
                  style: Theme.of(context).textTheme.button.copyWith(
                      color: blue,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
         Padding(
           padding:  EdgeInsets.only(top: Sizes.s12),
           child: Text(
            "Deskripsi",
            style: Theme.of(context).textTheme.button.copyWith(
                color: green,
                fontSize: FontSize.s12,
                fontWeight: FontWeight.w600),
        ),
         ),
        Padding(
          padding: EdgeInsets.only(top: Sizes.s5),
          child: Text(
            product.description,
            style: TextStyle(height: 1.5, fontSize: Sizes.s12, color: green),
          ),
        ),
         Padding(
           padding:  EdgeInsets.only(top: Sizes.s12),
           child: Text(
            "Ulasan dan Penilaian",
            style: Theme.of(context).textTheme.button.copyWith(
                color: green,
                fontSize: FontSize.s12,
                fontWeight: FontWeight.w600),
        ),
         ),
          SizedBox(height: Sizes.s20),
                      ReviewCard(name: "Maude Hall",url: "assets/images/user1.png",desc: "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                      SizedBox(height: kDefaultPaddin / 2),
                      ReviewCard(name: "Ester Howard",url: "assets/images/user2.png",desc: "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                      SizedBox(height: Sizes.s20),
      ],
    );
  }
}
