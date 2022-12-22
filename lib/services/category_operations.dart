import 'package:pitch/models/category.dart';

class CategoryOperations {
  CategoryOperations._();
  static List<Category> getCategories() {
    return <Category>[
      Category("Top Songs",
          "https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg"),
      Category("Liked Songs",
          "https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg"),
      Category("Trends",
          "https://is5-ssl.mzstatic.com/image/thumb/Purple122/v4/a5/89/7c/a5897c57-6c7c-b225-3f17-5447175bb24a/AppIcon-1x_U007emarketing-0-10-0-85-220.png/256x256bb.jpg"),
      Category("Discover",
          "https://i.scdn.co/image/ab67616d0000b273ccadf75f5999162ca8e7f300"),
      Category("Daily Mix",
          "https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb9b7e4f8e868dc2adfe6c3f4d/1/en/large"),
      Category("Chill Hits",
          "https://i.scdn.co/image/ab67706c0000bebb781d4229f6d083dbae265a60"),
    ];
  }
}
