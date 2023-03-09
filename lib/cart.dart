import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cart extends StatelessWidget {
  IconData icon;
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
        color: Color.fromARGB(255, 43, 7, 84),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.green,
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
                  color: Color.fromARGB(255, 94, 69, 192),
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
