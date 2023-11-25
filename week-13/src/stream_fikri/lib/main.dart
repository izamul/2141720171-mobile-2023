  import 'package:flutter/material.dart';
  import 'dart:async';
  import 'dart:math';

  import 'package:stream_fikri/stream.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Stream Fikri',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const StreamHomePage(),
      );
    }
  }

  class StreamHomePage extends StatefulWidget {
    const StreamHomePage({super.key});

    @override
    State<StreamHomePage> createState() => _StreamHomePageState();
  }

  class _StreamHomePageState extends State<StreamHomePage> {
    Color bgColor = Colors.blueGrey;
    late ColorStream colorStream;
    int lastNumber = 0;
    late StreamController<int> numberStreamController;
    late NumberStream numberStream;
    late StreamTransformer<int, int> transformer;
    late StreamSubscription subscription;

    late StreamSubscription subscription2;
    String values = '';

    void changeColor() async {
      print('Changing color...');
      colorStream.getColors().listen((eventColor) {
        print('Color changed: $eventColor');
        setState(() {
          bgColor = eventColor;
        });
      });
    }

    @override
    void dispose() {
      numberStreamController.close();
      super.dispose();
      subscription.cancel();
    }

    void addRandomNumber() {
      Random random = Random();
      int myNum = random.nextInt(10);
      if (!numberStreamController.isClosed) {
        numberStream.addNumberToSink(myNum);
      } else {
        setState(() {
          lastNumber = -1;
        });
      }
    }

    // @override
    // void initState() {
    //   transformer = StreamTransformer<int, int>.fromHandlers(
    //       handleData: (value, sink) {
    //         sink.add(value * 10);
    //       },
    //       handleError: (error, trace, sink) {
    //         sink.add(-1);
    //       },
    //       handleDone: (sink) => sink.close());

    //   print('Initializing state...');
    //   colorStream = ColorStream();
    //   numberStream = NumberStream();
    //   numberStreamController = numberStream.controller;
    //   Stream<int> stream = numberStreamController.stream;
    //   stream.transform(transformer).listen((event) {
    //     setState(() {
    //       lastNumber = event;
    //     });
    //   }).onError((error) {
    //     setState(() {
    //       lastNumber = -1;
    //     });
    //   });
    //   super.initState();
    // }

    @override
    void initState() {
      numberStream = NumberStream();
      numberStreamController = numberStream.controller;
      Stream stream = numberStreamController.stream.asBroadcastStream();

      // subscription = stream.listen(
      //   (event) {
      //     setState(() {
      //       lastNumber = event;
      //     });
      //   },
      //   onError: (error) {
      //     setState(() {
      //       lastNumber = -1;
      //     });
      //   },
      //   onDone: () {
      //     print('OnDone was called');
      //   },
      // );

      subscription = stream.listen((event) {
        setState(() {
          values += ' $event - ';
        });
      });

      subscription2 = stream.listen((event) {
        setState(() {
          values += ' $event - ';
        });
      });

      super.initState();
    }

    

    void stopStream() {
      numberStreamController.close();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Stream Fikri',
              style: TextStyle(
                color: Colors.white, // Set the text color
              )),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(values),
              ElevatedButton(
                onPressed: () => addRandomNumber(),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.teal, // Set the background color
                ),
                child: const Text(
                  'New Random Number',
                  style: TextStyle(
                    color: Colors.white, // Set the text color
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text('Stop Subscription'),
              )
            ],
          ),
        ),
      );
    }
  }
