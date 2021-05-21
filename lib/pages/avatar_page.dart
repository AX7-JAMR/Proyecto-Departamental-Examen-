import 'package:flutter/material.dart';
import 'package:examen_json/pages/avatar_view.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                /// 1. Circular AvatarView Without Border
                AvatarView(
                  radius: 60,
                  borderColor: Colors.yellow,
                  isOnlyText: false,
                  text: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath:
                      "https://lavisionweb.com/wp-content/uploads/2020/09/baby-yoda.jpg",
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
                SizedBox(
                  height: 16,
                ),

                /// 2. Circular AvatarView With Border
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath:
                      "https://lavisionweb.com/wp-content/uploads/2020/09/baby-yoda.jpg",
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
                SizedBox(
                  height: 16,
                ),

                /// 3. Rectangular AvatarView Without Border
                AvatarView(
                  radius: 60,
                  borderColor: Colors.grey,
                  avatarType: AvatarType.RECTANGLE,
                  backgroundColor: Colors.red,
                  imagePath:
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg",
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
                SizedBox(
                  height: 16,
                ),

                /// 4. Rectangular AvatarView With Border
                AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.grey,
                  avatarType: AvatarType.RECTANGLE,
                  backgroundColor: Colors.red,
                  imagePath:
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg",
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
                SizedBox(
                  height: 16,
                ),

                /// 5. Text Avatar with circle
                AvatarView(
                  radius: 80,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  isOnlyText: true,
                  text: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 100),
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
                SizedBox(
                  height: 16,
                ),

                /// 6. Text Avatar with Rectangle
                AvatarView(
                  radius: 80,
                  borderWidth: 8,
                  borderColor: Colors.yellow,
                  isOnlyText: true,
                  text: Text(
                    'C',
                    style: TextStyle(color: Colors.white, fontSize: 100),
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
                SizedBox(
                  height: 16,
                ),

                /// 7. Wrong image URL
                AvatarView(
                  radius: 80,
                  borderColor: Colors.grey,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath: "1234.jpg",
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
      ),
    );
  }
}
