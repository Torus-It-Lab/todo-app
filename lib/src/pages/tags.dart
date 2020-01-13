import 'package:flutter/material.dart';

class Tag {
  const Tag({this.title, this.url});

  final String title;
  final String url;
}

const List<Tag> tags = const <Tag>[
  const Tag(title: 'sport', url: 'assets/img/christin-hume.jpg'),
  const Tag(title: 'travel', url: 'assets/img/simon-migaj.jpg'),
  const Tag(title: 'languages', url: 'assets/img/bekir-donmez.jpg'),
  const Tag(title: 'year goal', url: 'assets/img/hans-vivek.jpg'),
  const Tag(title: 'design', url: 'assets/img/steve-halama.jpg'),
  const Tag(title: 'food', url: 'assets/img/jyotirmoy-gupta.jpg'),
];


class TagsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Container(
        padding: EdgeInsets.only(left: 10),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tags',            
                style: new TextStyle(
                  color: Colors.white.withOpacity(1.0),
                  fontSize: 40
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: FlatButton.icon(
                  
                  //color: Theme.of(context).accentColor,
                  textColor: Theme.of(context).accentColor,
                  icon: Icon(Icons.add), //`Icon` to display
                  label: Text('Add new tag'), //`Text` to display
                  onPressed: () {
                    //Code to execute when Floating Action Button is clicked
                    //...
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Divider(),
              ),              
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 15),
                itemCount: tags.length,
                itemBuilder: (context, index) {
                  return InkWell (
                    // onTap: (){
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => FatherSonScreen()),
                    //   );
                    // },
                    child: Column(
                      
                      //margin: EdgeInsets.symmetric(vertical: 0.5),
                      children: <Widget>[
                        //Divider(),
                        Row(
                          children: <Widget>[
                            Text(
                              '#    ',            
                              style: new TextStyle(
                                color: Color( 0xfff225ca ),
                                fontSize: 20
                              ),
                            ),
                            Text(
                              tags[index].title,                            
                              style: new TextStyle(                               
                                fontSize: 15
                              )
                            )
                          ],
                        ),
                        Divider()
                      ]  
                    ),
                  );
                },
                  
              ),
            ],
          ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // onTap: (index){
        //   Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HistoryScreen()),
        //             );
        // },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Tasks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Goals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      
      ),
    );

  }

}