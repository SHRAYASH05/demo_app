import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  String icon;
  String heading;
  String discription;
  String? subDis;
  Cart(this.icon, this.heading, this.discription, this.subDis);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(57, 48, 70, 100),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                discription,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                subDis ?? "",
                style: TextStyle(
                  color: Color.fromRGBO(235, 236, 236, 100),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            size: 30,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
