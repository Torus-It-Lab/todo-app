import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TaskScreen extends StatefulWidget {
  @override
  _TaskScreen createState() => _TaskScreen();
}


class _TaskScreen extends State<TaskScreen> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool thuVal = false;
  bool friVal = false;
  bool satVal = false;
  bool sunVal = false;

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(title: Text('Tasks')),
      body: Container(
        padding: EdgeInsets.all(10),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Golang Coding ',            
                style: new TextStyle(
                  color: Colors.white.withOpacity(1.0),
                  fontSize: 40
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.tags),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Tags ',                                     
                          style: new TextStyle(
                            fontSize: 18
                          ),
                        ),
                        FlatButton.icon(
                          //color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).accentColor,
                          icon: Icon(Icons.add), //`Icon` to display
                          label: Text('Add tags'), //`Text` to display
                          onPressed: () {
                            //Code to execute when Floating Action Button is clicked
                            //...
                          },
                        ),                     
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:45),
                child: Divider(),
              ),                  
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:  Text(
                        'Repeat ',            
                        style: new TextStyle(
                          color: Colors.white.withOpacity(1.0),
                          fontSize: 18
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[                  
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("M"),
                            Checkbox(
                              value: monVal,
                              onChanged: (bool value) {
                                setState(() {
                                  monVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("T"),
                            Checkbox(
                              value: tuVal,
                              onChanged: (bool value) {
                                setState(() {
                                  tuVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("W"),
                            Checkbox(
                              value: wedVal,
                              onChanged: (bool value) {
                                setState(() {
                                  wedVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("T"),
                            Checkbox(
                              value: thuVal,
                              onChanged: (bool value) {
                                setState(() {
                                  thuVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("F"),
                            Checkbox(
                              value: friVal,
                              onChanged: (bool value) {
                                setState(() {
                                  friVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("S"),
                            Checkbox(
                              value: satVal,
                              onChanged: (bool value) {
                                setState(() {
                                  satVal = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("S"),
                          Checkbox(
                            value: sunVal,
                            onChanged: (bool value) {
                              setState(() {
                                sunVal = value;
                              });
                            },
                          ),
                        ],
                      ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:45),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left:45),
                child: Divider(),
              ), 
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.calendar),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Date ',            
                          style: new TextStyle(                            
                            fontSize: 18
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '13 may 2019',            
                            style: new TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 18
                            ),
                          ),
                        ),                    
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.clock),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Time ',            
                          style: new TextStyle(
                            fontSize: 18
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Set up time',            
                            style: new TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 18
                            ),
                          ),
                        ),                    
                      ],
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left:45),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.bell),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Notification ',            
                          style: new TextStyle(
                            fontSize: 18
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Set up alarm',            
                            style: new TextStyle(
                              color: Colors.white.withOpacity(1.0),
                              fontSize: 18
                            ),
                          ),
                        ),                    
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:45),
                child: Divider(),
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
            icon: Icon(FontAwesomeIcons.tags),
            title: Text('Tags'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.calendar),
            title: Text('Date'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clock),
            title: Text('Time'),
          ),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            title: Text('Notification'),
          ),
        ],
      
      ),
    );

  }

}