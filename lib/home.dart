import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: CircleAvatar(
              child: IconButton(
                icon: Icon(null),
                onPressed: () {},
              ),
              backgroundImage: NetworkImage(
                  'http://www.racemph.com/wp-content/uploads/2016/09/profile-image-placeholder.png'),
              backgroundColor: Colors.cyan,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('My Page'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Material(
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        icon: Icon(Icons.search),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'PHOTOGRAPHY',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (int i) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Image.asset(
                                'assets/$i.jpg',
                                fit: BoxFit.fill,
                              ),
                              width: 300,
                            )),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: NetworkImage(
                                    'https://s3.amazonaws.com/37assets/svn/1065-IMG_2529.jpg'),
                              ),
                              title: Text('Amir'),
                              subtitle: Text('3 minute age'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'iPHONE',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (int i) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            flex: 5,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Image.asset(
                                'assets/$i.jpg',
                                fit: BoxFit.fill,
                              ),
                              width: 300,
                            )),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: 300,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.deepOrangeAccent,
                                backgroundImage: NetworkImage(
                                    'https://static-cdn.jtvnw.net/jtv_user_pictures/aa68742d-ae1f-4fb7-9d0c-e1756d5204b0-profile_image-300x300.jpg'),
                              ),
                              title: Text('Ali'),
                              subtitle: Text('5 minute age'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
