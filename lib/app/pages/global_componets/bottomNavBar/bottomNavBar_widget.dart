import 'package:example_flutter/app/pages/global_componets/bottomNavBar/bottomNavBar_bloc.dart';
import 'package:example_flutter/app/share/share_variables.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarBloc bloc = new BottomNavBarBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.output,
      initialData: ShareVariables.selectedIndex,
      builder: (context, snapshot) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Procurar'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
            ),
          ],
          currentIndex: ShareVariables.selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: (int index) => bloc.onItemTapped(index, context),
        );
      },
    );

    /*  BottomNavigationBar(
      
      items: const <BottomNavigationBarItem>[
        
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      
     
    
      
    );*/
  }
}
