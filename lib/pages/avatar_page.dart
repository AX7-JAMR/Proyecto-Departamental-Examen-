import 'package:flutter/material.dart';
import 'package:examen_json/pages/avatar_view.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatars"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),

                /// 1. Circular AvatarView Without Border
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    borderColor: Colors.yellow,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/image.png",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 2. Circular AvatarView With Border
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderWidth: 8,
                    borderColor: Colors.yellow,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/image.png",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage2()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 3. Rectangular AvatarView Without Border
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderColor: Colors.grey,
                    avatarType: AvatarType.RECTANGLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/image.png",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage3()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 4. Rectangular AvatarView With Border
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderWidth: 8,
                    borderColor: Colors.grey,
                    avatarType: AvatarType.RECTANGLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/image.png",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage4()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 5. Text Avatar with circle
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderWidth: 8,
                    borderColor: Colors.yellow,
                    isOnlyText: true,
                    text: Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage5()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 6. Text Avatar with Rectangle

                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderWidth: 8,
                    borderColor: Colors.yellow,
                    isOnlyText: true,
                    text: Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                    avatarType: AvatarType.RECTANGLE,
                    backgroundColor: Colors.red,
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage6()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),

                /// 7. Wrong image URL
                IconButton(
                  iconSize: 100,
                  icon: AvatarView(
                    radius: 60,
                    borderColor: Colors.grey,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath:
                        "https://i0.wp.com/www.scienceofnoise.net/wp-content/uploads/2020/09/rust-in-peace-5cd5b40e937e4.jpg",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage7()),
                    );
                  },
                ),
                SizedBox(
                  height: 16,
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarView circular sin borde'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'avatar circular sini borde',
                  style: TextStyle(fontSize: 35),
                )),

                /// 1. Circular AvatarView Without Border

                AvatarView(
                  borderColor: Colors.yellow,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/image.png",
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  errorWidget: Container(
                    child: Icon(
                      Icons.error,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar circular con borde'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'avatar circular con borde',
                  style: TextStyle(fontSize: 35),
                )),
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/image.png",
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  errorWidget: Container(
                    child: Icon(
                      Icons.error,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Rectangular AvatarView Without Border'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'avatar rectabgular sin borde',
                  style: TextStyle(fontSize: 35),
                )),
                AvatarView(
                  radius: 60,
                  borderColor: Colors.grey,
                  avatarType: AvatarType.RECTANGLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/image.png",
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Rectangular AvatarView With Border'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'avatar rectangular con borde',
                  style: TextStyle(fontSize: 35),
                )),
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.grey,
                  avatarType: AvatarType.RECTANGLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/image.png",
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Avatar with circle'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'avatar circular con letra',
                  style: TextStyle(fontSize: 35),
                )),
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  isOnlyText: true,
                  text: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Avatar with Rectangle'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Avatar rectangular con texto',
                  style: TextStyle(fontSize: 35),
                )),
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  isOnlyText: true,
                  text: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                  avatarType: AvatarType.RECTANGLE,
                  backgroundColor: Colors.red,
                  placeHolder: Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  errorWidget: Container(
                    child: Icon(
                      Icons.error,
                      size: 50,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class DetailPage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrong image URL'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                'Imagen con URL',
                style: TextStyle(fontSize: 35),
              )),
              AvatarView(
                radius: 60,
                borderColor: Colors.grey,
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath: "image.jpg",
                placeHolder: Container(
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                errorWidget: Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.error,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
