import 'package:flutter/material.dart';

class CardGlobalInformation extends StatefulWidget {
  final List<Color> colors;
  final String label;
  final String value;

  const CardGlobalInformation({Key key, this.colors, this.label, this.value})
      : super(key: key);

  @override
  _CardGlobalInformationState createState() => _CardGlobalInformationState();
}

class _CardGlobalInformationState extends State<CardGlobalInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Card(
        elevation: 18,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(42.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(42)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: widget.colors)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.label,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.value,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
