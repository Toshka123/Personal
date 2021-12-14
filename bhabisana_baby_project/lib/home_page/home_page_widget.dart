import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../videos/videos_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          backgroundColor: Color(0xFF673AB7),
          automaticallyImplyLeading: true,
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.86, -0.95),
              child: Image.asset(
                'assets/images/New-Logo-Temp-Circle-1024x1024.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.06, 0.87),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideosWidget(),
                    ),
                  );
                },
                text: 'Explore Content',
                options: FFButtonOptions(
                  width: 150,
                  height: 40,
                  color: Color(0xFF9134E0),
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.08, 0.18),
              child: FlutterFlowVideoPlayer(
                path: 'assets/videos/VIDEO-2021-11-26-13-07-49.mp4',
                videoType: VideoType.asset,
                width: MediaQuery.of(context).size.width * 0.7,
                height: 300,
                autoPlay: false,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.1, -0.55),
              child: Text(
                'Watch our introduction video below!',
                style: FlutterFlowTheme.bodyText1,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.38, -0.85),
              child: Text(
                'BBP Connect',
                style: GoogleFonts.getFont(
                  'Open Sans',
                  color: Color(0xFF673AB7),
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
