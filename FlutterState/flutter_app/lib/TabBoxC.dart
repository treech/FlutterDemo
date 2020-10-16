import 'package:flutter/material.dart';

class TabBoxC extends StatefulWidget {
  TabBoxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<StatefulWidget> createState() {
    return _TabBoxCState();
  }
}

class _TabBoxCState extends State<TabBoxC> {
  bool _highLight = false;

  _handleTap() {
    widget.onChanged(!widget.active);
  }

  _handleTapDown(TapDownDetails details) {
    setState(() {
      _highLight = true;
    });
  }

  _handleTapUp(TapUpDetails details) {
    setState(() {
      _highLight = false;
    });
  }

  _handleTapCancel() {
    setState(() {
      _highLight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highLight
                ? Border.all(color: Colors.teal[700], width: 10.0)
                : null),
      ),
    );
  }
}
