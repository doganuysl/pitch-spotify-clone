import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pitch/models/music.dart';
import 'package:pitch/screens/yourlibrary.dart';
import 'package:pitch/screens/home.dart';
import 'package:pitch/screens/search.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = AudioPlayer();
  // ignore: non_constant_identifier_names
  var Tabs = [];
  int currentTabIndex = 0;
  bool isPlaying = false;
  Music? music;
  Widget miniPlayer(Music? music, {bool stop = false}) {
    this.music = music;

    if (music == null) {
      return const SizedBox();
    }
    if (stop) {
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            music.image,
            fit: BoxFit.cover,
          ),
          Text(
            music.name,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          IconButton(
              onPressed: () async {
                isPlaying = !isPlaying;
                if (isPlaying) {
                  await _audioPlayer.play(music.audioURL);
                } else {
                  await _audioPlayer.pause();
                }
                setState(() {});
              },
              icon: isPlaying
                  ? const Icon(
                      Icons.pause_rounded,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Tabs = [Home(miniPlayer), const Search(), const YourLibrary()];
  }

  // UI design code goes inside build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
              currentIndex: currentTabIndex,
              onTap: (currentIndex) {
                currentTabIndex = currentIndex;
                setState(() {}); // re-render
              },
              selectedLabelStyle: const TextStyle(color: Colors.white),
              selectedItemColor: Colors.white,
              backgroundColor: Colors.black45,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.white),
                    label: "Search"),
                BottomNavigationBarItem(
                    icon:
                        Icon(Icons.library_books_outlined, color: Colors.white),
                    label: "Your Library")
              ]),
        ],
      ),
    );
  }
}
