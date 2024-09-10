import "dart:async";
import "dart:math";

import "package:flutter/material.dart";

class StreamScreen extends StatefulWidget {
  const StreamScreen({super.key});

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  
  
  //Manejo de stream con stream controllers
   final colorStream = StreamController<Color>();

  @override
  dispose() {
    colorStream.close();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Center(
        child: StreamBuilder<Color>(
            stream: colorStream.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  height: 100,
                  width: 100,
                  color: snapshot.data,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          ),
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: (){
              final randomColor = Color.fromRGBO(
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
                1
              );
              colorStream.sink.add(randomColor);
            }, 
            child: const Icon(Icons.color_lens)
          )
    );
  }
}