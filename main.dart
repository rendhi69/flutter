import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Profile {
  final String name;
  final String link;
  final String rank;

  Profile({
    required this.name,
    required this.link,
    required this.rank,
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Profile> profiles = [
    Profile(
      name: "Pak.Burhan",
      link:
          "https://tse1.mm.bing.net/th?id=OIP.rWMkSWquS6L4cacVpRiF6QHaEK&pid=Api&P=0&h=180",
      rank: "Onwer",
    ),
    Profile(
      name: "Pak.Udin",
      link:
          "https://tse3.mm.bing.net/th?id=OIP.avQpgGCjovRLVz-qYL1xpgHaEo&pid=Api&P=0&h=180",
      rank: "CO Owner",
    ),
    Profile(
      name: "Bro Fahmi",
      link:
          "https://i.pinimg.com/originals/04/4f/e6/044fe6678073bca353c8185dbc3e8c0a.jpg",
      rank: "Designer",
    ),
     Profile(
      name: "Army",
      link:
          "https://i.pinimg.com/originals/4d/a1/f3/4da1f3de2bbb6b41acc240b8b431f103.jpg",
      rank: "Stuff",
    ),
        Profile(
      name: "Agus",
      link:
          "https://tse2.mm.bing.net/th?id=OIP.-H2unOo8HtD7eVVjKgnVNwHaHa&pid=Api&P=0&h=180",
      rank: "Stuff",
    ),
    Profile(
      name: "Siti",
      link:
          "https://i.kym-cdn.com/entries/icons/facebook/000/032/804/cover2.jpg",
      rank: "Stuff",
    ),
    Profile(
      name: "Yulian",
      link:
          "https://i.pinimg.com/originals/5c/96/20/5c9620d36e9b1ce3fddec530b40caed6.jpg",
      rank: "Stuff",
    ),
    Profile(
      name: "Rohman",
      link:
          "https://tse3.mm.bing.net/th?id=OIP.5kyBXyQ9us3PIL7mpH7UowHaHM&pid=Api&P=0&h=180",
      rank: "Stuff",
    ),
    Profile(
      name: "Husna",
      link:
          "https://www.tronya.co/wp-content/uploads/2017/04/meme-portada.jpg",
      rank: "Stuff",
    ),

  ];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
            },
          ),
          title: Center(
            child: Text(
              "Daftar Anggota",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            backgroundColor: Colors.blue;
            final profile = profiles[index];
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    profile.link,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  profile.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'jabatan : ${profile.rank}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
