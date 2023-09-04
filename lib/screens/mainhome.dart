import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back_ios_new)),
              Text(
                "Home",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white, child: Icon(Icons.add)),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/TopBar.png"),SizedBox(height: 20,),
            Image.asset("assets/images/Card.png"),SizedBox(height: 20,width: 30,),
            Image.asset("assets/images/bbc.png"),SizedBox(height: 20,),
            Image.asset("assets/images/InProgress.png")
          ],
        ),
      ),
    );
  }
}
