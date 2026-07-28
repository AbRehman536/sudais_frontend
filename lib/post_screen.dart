import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Text("POST"),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          Icon(Icons.notification_add),
          Icon(Icons.settings),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2
                    )
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/045/711/185/non_2x/male-profile-picture-placeholder-for-social-media-forum-dating-site-chat-operator-design-social-profile-template-default-avatar-icon-flat-style-free-vector.jpg"),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Abdullah Rehman",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                    Text("Islamabad, Pakistan",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 12,
                      wordSpacing: 2,
                      letterSpacing: 2
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/first.jpg",
                )),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  Icon(Icons.favorite,color: Colors.red,size: 20,),
                  SizedBox(width: 3,),
                  Text("Likes"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment,size: 20, color: Colors.black,),
                  SizedBox(width: 3,),
                  Text("Comments"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share,size: 20, color: Colors.blue,),
                  SizedBox(width: 3,),
                  Text("Share"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bookmark_sharp,size: 20, color: Colors.yellow,),
                  SizedBox(width: 3,),
                  Text("Save")
                ],
              ),
            ],)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
        icon: Icon(Icons.add), label: Text("Add"),),
    );
  }
}
