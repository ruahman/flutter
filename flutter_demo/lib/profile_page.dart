import "package:flutter/material.dart";

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Item $index"),
          subtitle: Text("Subtitle $index"),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Add your onTap code here!
            debugPrint("Item $index tapped");
          },
        );
      },
    );
  }
}
