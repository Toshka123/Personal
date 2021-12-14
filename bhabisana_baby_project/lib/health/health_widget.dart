import '../breastfeeding/breastfeeding_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthWidget extends StatefulWidget {
  const HealthWidget({Key key}) : super(key: key);

  @override
  _HealthWidgetState createState() => _HealthWidgetState();
}

class _HealthWidgetState extends State<HealthWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF673AB7),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-0.25, -1),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.05, -1),
                    child: Image.asset(
                      'assets/images/New-Logo-Temp-Circle-1024x1024.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.4, -0.9),
                    child: Text(
                      'Health Problems',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF673AB7),
                        fontSize: 28,
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await launchURL(
                    'https://drive.google.com/file/d/1yx8aceM7DCr5YAfHYR3JSoyyrKBlR7es/view?usp=sharing');
              },
              child: ListTile(
                title: Text(
                  'Video 1  - Tummy',
                  style: FlutterFlowTheme.title3,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HealthWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'Video 2 - Eyes',
                  style: FlutterFlowTheme.title3,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BreastfeedingWidget(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  'Video 3 - Sepsis',
                  style: FlutterFlowTheme.title3,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
