import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/menu_widgets/custom_icon_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../routes/routes.dart';

class TransitionScreen extends ConsumerWidget {
  static String name = 'transition_screen';
  final int type;
  const TransitionScreen({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //riverpod provider
    //final url = ref.watch(streamProvider);
    String url = "test";
    //local variables
    late String title;
    late List<Color> gradient;
    late String image;
    
    if (type == 1) {
      title = 'CALENDARIO';
      gradient = [const Color(0xffe0edd4), const Color(0xffcaf0fe)];
      image = 'assets/calendar-with-a-clock-time-tools_icon-icons.com_56831.png';
      //ref.read(streamProvider.notifier).state = 'main_calendar_screen';
      url = 'main_calendar_screen';
    }
    if (type == 2) {
      title = 'EJERCITA\nTU\nMEMORIA';
      gradient = [const Color(0xfff1c9fe), const Color(0xffcaf0fe)];
      image = 'assets/976605-appliances-console-controller-dualshock-gamepad-games-videogame_106553.png';
      //ref.read(streamProvider.notifier).state = 'game1_screen';
      url = 'game1_screen';
    }
    if (type == 3) {
      title = 'EVENTOS';
      gradient = [const Color(0xfffffbb9), const Color(0xffcaf0fe)];
      image = 'assets/events_icon_150288.png';
      //ref.read(streamProvider.notifier).state = 'event_screen';
      url = 'event_screen';
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradient,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomIcon(image: image),
            const SizedBox(
              height: 40,
            ),
            _StreamExample(path: url,)
          ],
        ))),
      ),
    );
  }
}

class _StreamExample extends StatefulWidget {
  final String path;
  const _StreamExample ({ Key? key, required this.path }): super(key: key);
  @override
  StreamExampleState createState() => StreamExampleState();
}

class StreamExampleState extends State<_StreamExample> {
  late StreamController<String> _controller;

  @override
  void initState() {
    super.initState();
    _controller = StreamController<String>();
    _startStream();
  }

  void _startStream() async {
    // Simulate an asynchronous operation, like fetching data
    await Future.delayed(const Duration(seconds: 3));

    // Close the stream when done
    _controller.close();

    // Push a new screen when the stream is done
    appRouter.pushNamed(widget.path);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _controller.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Build your widget based on the data
          return ListTile(
            title: Text(snapshot.data.toString()),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Show a loading indicator or an empty container while waiting
          return const Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: LinearProgressIndicator(color: Colors.amber,)
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _controller
        .close(); // Close the stream controller when the widget is disposed
    super.dispose();
  }
}

