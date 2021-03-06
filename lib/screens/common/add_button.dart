import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddButton extends StatelessWidget {
  final Icon icon;
  const AddButton({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      right: 16.0,
      child: Container(
        width: 64.0,
        height: 64.0,
        decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.grey[300],
            shadows: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 7.0),
                blurRadius: 10,
              ),
            ]),
        child: CupertinoButton(
          child: this.icon,
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  content: Column(
                    children: <Widget>[
                      CupertinoButton(
                        child: Text("사진"),
                        onPressed: () {},
                      ),
                      Divider(),
                      CupertinoButton(
                        child: Text("링크"),
                        onPressed: () {},
                      ),
                      Divider(),
                      CupertinoButton(
                        child: Text("텍스트"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
