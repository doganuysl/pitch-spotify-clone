import 'package:flutter/material.dart';
import 'package:pitch/services/category_operations.dart';
import 'package:pitch/services/music_operations.dart';
import '../models/category.dart';
import '../models/music.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Function _miniPlayer;
  Home(this._miniPlayer, {super.key}); // shorthand
  /* const Home(Widget Function(Music? music) miniPlayer, {super.key}); */
  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageURL, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  createListOfCategories() {
    List<Category> categoryList =
        CategoryOperations.getCategories(); //recieve data
    //conver data to widget using map function
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                _miniPlayer(music, stop: true);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            music.name,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            music.desc,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          )
        ]));
  }

  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(message),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            createAppBar("Good Morning"),
            const SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList("Made For You"),
            createMusicList("Popuplar Playlist"),
            createMusicList("Daily Mix"),
            createMusicList("Look @ This"),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blueGrey.shade300,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.1, 0.3])),
        /* child: Text(""),
        color: Colors.orange, */
      )),
    );
  }
}
