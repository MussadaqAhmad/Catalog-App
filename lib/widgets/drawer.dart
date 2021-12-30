import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.flyp4-1.fna.fbcdn.net/v/t1.6435-1/c35.0.160.160a/p160x160/171430288_802732910353466_3212166283652765238_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeGnIA8LLw4-vOj94jud1MxUkv3Lgzt9Vt-S_cuDO31W3_hEC81e8BQmFegWQB-A5yOKm8K3bq0VoHXBS8FbIUCK&_nc_ohc=veaySYwUVMMAX_2WJ-g&tn=B4KuTrVu70YwIvx7&_nc_ht=scontent.flyp4-1.fna&oh=00_AT8s4ghde4XIrLDL90yiT5htWXwSegJ9RpUWXsGxIvrRBQ&oe=61F2D830";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Mussadaq Ahmad"),
                  accountEmail: Text("mussadaq900@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
