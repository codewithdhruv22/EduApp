import 'package:edu/view/auth/profile_create.dart';
import 'package:edu/view/homeScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

 TabController? tabController;
  int selectedIndex = 0;


  

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }
  

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

   

    return Scaffold(


        bottomNavigationBar: BottomNavigationBar(
        // unselectedItemColor: Colors.white54,
        // selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_sharp), label: "My Courses"),
   
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),


      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          homeScreen(),
          homeScreen(),
          homeScreen(),
       
        ],
      ),
    );
  }
}