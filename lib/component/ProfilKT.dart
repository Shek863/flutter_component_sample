import 'package:component_sample/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodora_ux/kodora_ux.dart';

class ProfilKT extends StatefulWidget {

  final GestureTapCallback onTap;
  double size = h(58);

  bool withDots = false;
  Color dotsColor = nColorRed;
  bool withBorder = false;
  Color borderColor = nColorGreen;


  //double textSize = s(19);
  Color textColor = nColorWhite;
  String textFontFamily = "GMSans";
  FontWeight textFontWeight = FontWeight.w700;

  Color backgroundColor = nColorPrimaryDark;

  String text = "SM";
  String image = "";

  ProfilKT({
    this.onTap,
    this.size,
    this.textColor,
    this.textFontFamily,
    this.textFontWeight,
    this.backgroundColor,
    this.text,
    this.image,
    this.withDots,
    this.dotsColor,
    this.withBorder,
    this.borderColor,
  });

  _ProfileKTState createState() => _ProfileKTState();
}

class _ProfileKTState extends State<ProfilKT> {

  _buildWidget(context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          padding: EdgeInsets.all(widget.withBorder ? widget.size/50:0),
          height: widget.size,
          width: widget.size,
          decoration: BoxDecoration(
            color: nColorGreen ,
            borderRadius: BorderRadius.circular(widget.size),
          ),
        child: Stack(
          children: [
            ClipOval(
              child: new Container(
                decoration: BoxDecoration(
                  color: nColorPrimaryDark ,
                ),
                child: Stack(
                    children: <Widget> [
                      Align(
                        alignment: Alignment.center,
                        child:  new Text(
                          widget.text,
                          style: TextStyle(
                              color: widget.textColor,
                              fontFamily: widget.textFontFamily,
                              fontWeight: widget.textFontWeight,
                              fontSize: widget.size/2.5),
                        ),
                      ),
                      Image.asset("",//widget.image!=""?widget.image:null,
                        fit: BoxFit.cover,
                      ),
                    ]
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: widget.withDots ? Container(
                height: widget.size/6,
                width: widget.size/6,
                margin: EdgeInsets.all(widget.size/16),
                decoration: BoxDecoration(
                  color: widget.dotsColor,
                  borderRadius: BorderRadius.circular(widget.size/6),
                ),
              ): Container(),
            ),
          ],

        )

      )

    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWidget(context);
  }

}

