import 'package:flutter/material.dart';
import 'package:hackathon/screens/addproduct.dart';
import 'package:hackathon/screens/chat.dart';
import 'package:hackathon/screens/mainhome.dart';
import 'package:hackathon/screens/profile.dart';
import 'package:hackathon/screens/projects.dart';
// import 'package:hackathon/screens/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTab = 1;
  Widget currentScreen = Project();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
                    currentScreen = MainHome();
                  });
                },
                child: Icon(
                  Icons.home_filled,
                  color:
                      activeTab == 0 ? Colors.deepPurpleAccent : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  activeTab = 2;
                  setState(() {
                    currentScreen = Project();
                  });
                },
                child: Icon(
                  Icons.folder,
                  color:
                      activeTab == 2 ? Colors.deepPurpleAccent : Colors.black,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: MaterialButton(
                  minWidth: 70,
                  onPressed: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) => Center(
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text("Create Task"),
                                onPressed: (){Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddProductView(),
                              ),
                            );} ,
                              ),ElevatedButton(
                                child: Text("Create Project"),
                                onPressed: (){Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddProductView(),
                              ),
                            );} ,
                              ),ElevatedButton(
                                child: Text("Create Team"),
                                onPressed: (){Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddProductView(),
                              ),
                            );} ,
                              ),ElevatedButton(
                                child: Text("Create Event"),
                                onPressed: (){Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddProductView(),
                              ),
                            );} ,
                              ),
                            ],
                          ),
                        ));
                    activeTab = 1;
                    setState(() {
                      // currentScreen = AddCart();
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: activeTab == 1
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = Users();
                  });
                },
                child: Icon(
                  Icons.chat_outlined,
                  color:
                      activeTab == 3 ? Colors.deepPurpleAccent : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = Profile();
                  });
                },
                child: Icon(
                  Icons.person_4_outlined,
                  color:
                      activeTab == 3 ? Colors.deepPurpleAccent : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
