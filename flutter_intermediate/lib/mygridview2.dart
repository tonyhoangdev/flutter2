import "package:flutter/material.dart";

class MyGridView2 extends StatefulWidget {
  @override
  _MyGridViewState2 createState() => _MyGridViewState2();
}

class _MyGridViewState2 extends State<MyGridView2> {


  List<String> listImage() {
    List<String> lists = List();

    lists.add('https://i.pinimg.com/originals/ab/be/de/abbede74b100fc20394bd930ba7a680e.jpg');
    lists.add("https://i.pinimg.com/564x/b0/98/1a/b0981a0b83e4df6c1138d233876b19f1.jpg");
    lists.add("https://i.pinimg.com/564x/d5/d9/f5/d5d9f54b100acc4066a8863401b6be77.jpg");
    lists.add("https://i.pinimg.com/originals/dd/47/0a/dd470a474d8827217091d12405bbeec6.jpg");
    lists.add("https://i.pinimg.com/originals/a9/d8/dc/a9d8dc2da063b50fce6dba45c2339957.jpg");
    lists.add("https://i.pinimg.com/originals/f4/fd/5f/f4fd5f7b436235bbbff19920c0b4cb96.jpg");
    lists.add("https://i.pinimg.com/originals/0a/6a/9d/0a6a9d646b82bfee220f9227fd4ae533.jpg");
    lists.add("https://i.pinimg.com/originals/51/a2/4b/51a24b1f948869020106aed1ffda01f2.jpg");
    lists.add("https://i.pinimg.com/originals/cd/98/15/cd98156384cbcea0c0097aec77cee537.jpg");
    lists.add("https://i.pinimg.com/originals/a9/9a/c4/a99ac4dd80dbdc669130916d6ac5e404.jpg");
    lists.add("https://i.pinimg.com/originals/de/c8/50/dec8507532926911affc95f638d1c574.jpg");
    lists.add("https://i.pinimg.com/564x/79/e2/85/79e285ed9ca0af3ce543f3c4c4930f57.jpg");
    lists.add("https://i.pinimg.com/564x/e9/e4/f4/e9e4f40e84ed8b8f894f34137f7499d9.jpg");
    lists.add("https://i.pinimg.com/564x/0f/1e/4e/0f1e4ec13c3ae13ed9cf2ad0432ae3d1.jpg");
    lists.add("https://i.pinimg.com/originals/88/00/15/880015d899d921d7d31ab76cbfa1e751.jpg");
    lists.add("https://i.pinimg.com/originals/f4/2e/69/f42e69ae3b77e87c0114bec1e2e936e7.png");
    lists.add("https://i.pinimg.com/564x/6f/81/c8/6f81c8e9f5a1983b50566e68b9fd2c43.jpg");
    lists.add("https://i.pinimg.com/564x/6e/ac/ee/6eacee4c3e9e8f21f830843661350895.jpg");
    lists.add("https://i.pinimg.com/564x/e9/e4/f4/e9e4f40e84ed8b8f894f34137f7499d9.jpg");
    lists.add("https://i.pinimg.com/564x/52/a6/94/52a694918449347e9add9382e1e39099.jpg");

    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tony Grid View"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: listImage().map((String url) {
              return GridTile(
                child: new Image.network(url, fit:BoxFit.cover),
              );
            }).toList(),

        ),
      ),
    );
  }
}
