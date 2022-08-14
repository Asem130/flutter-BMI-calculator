import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/213058446_1246152899138968_5936498631660364063_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=IZBK3NQ9HD8AX_rsyAu&_nc_oc=AQlYFSUvIP7qZLlz10INv9FFpqUo0O0yeE1SQOgb5s2MlTrk7LD5jDNCGjuL9cHh7ho&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_2wOoAscFXfGCfuA67hHL2HwRXy8i11WBF5QN4UdVqxA&oe=62FA8790'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.shade900,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: Colors.grey.shade900,
                  radius: 15,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                  ),
                ),
              )
            ],
          ),
        ],
        titleSpacing: 20.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade900,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 115,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  itemCount: 6,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context,index)=>SizedBox(height: 16,),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/213058446_1246152899138968_5936498631660364063_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=IZBK3NQ9HD8AX_rsyAu&_nc_oc=AQlYFSUvIP7qZLlz10INv9FFpqUo0O0yeE1SQOgb5s2MlTrk7LD5jDNCGjuL9cHh7ho&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_2wOoAscFXfGCfuA67hHL2HwRXy8i11WBF5QN4UdVqxA&oe=62FA8790'),
            radius: 25,
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 7,
          )
        ],
      ),
      SizedBox(
        width: 12,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Asem Elgendi',
              maxLines: 1,
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my name is asem ',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 17,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  '02:00 pm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStoryItem() => Container(
    width: 50,
    child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/213058446_1246152899138968_5936498631660364063_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=IZBK3NQ9HD8AX_rsyAu&_nc_oc=AQlYFSUvIP7qZLlz10INv9FFpqUo0O0yeE1SQOgb5s2MlTrk7LD5jDNCGjuL9cHh7ho&_nc_ht=scontent.fcai20-3.fna&oh=00_AT_2wOoAscFXfGCfuA67hHL2HwRXy8i11WBF5QN4UdVqxA&oe=62FA8790'),
              radius: 25,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 7,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          ''
              'Asem Elgendi',
          maxLines: 2,
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    ),
  );
}
