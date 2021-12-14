import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostNICUWidget extends StatefulWidget {
  const PostNICUWidget({Key key}) : super(key: key);

  @override
  _PostNICUWidgetState createState() => _PostNICUWidgetState();
}

class _PostNICUWidgetState extends State<PostNICUWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
