import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gelar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: MyHomePage(title: 'Menu Gelar Waroeng Hari Ini'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'Lalapan Bebek',
                      rating: 4.9,
                      time: '20 mnt',
                      price: '17 rb',
                      sellerName: 'Gelar Waroeng',
                      sellerImage: 'assets/images/gelar.jpeg',
                      isVerified: true,
                      imageUrl: 'assets/images/fromandroid-5da41dc0dd201d77067dc282ed4afa5c.jpg',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'Es Campur',
                      rating: 5,
                      time: '10 mnt',
                      price: '10 rb',
                      sellerName: 'Gelar Waroeng',
                      sellerImage: 'assets/images/gelar.jpeg',
                      isVerified: true,
                      imageUrl: 'assets/images/2-Es-Campur-Sinar-Garut.jpg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'Pempek',
                      rating: 4.8,
                      time: '10 mnt',
                      price: '15 rb',
                      sellerName: 'Gelar Waroeng',
                      sellerImage: 'assets/images/gelar.jpeg',
                      isVerified: true,
                      imageUrl: 'assets/images/YvqVCFqEGA.jpg',
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    child: _buildRecipeCard(
                      title: 'Es Cream',
                      rating: 5,
                      time: '7 mnt',
                      price: '15 rb',
                      sellerName: 'Gelar Waroeng',
                      sellerImage: 'assets/images/gelar.jpeg',
                      isVerified: true,
                      imageUrl: 'assets/images/R.jpeg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeCard({
    required String title,
    required double rating,
    required String time,
    required String price,
    required String sellerName,
    required String sellerImage,
    required bool isVerified,
    required String imageUrl,
  }) {
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(sellerImage),
                  radius: 20.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  sellerName,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                if (isVerified)
                  Icon(Icons.check_circle, color: Colors.blue, size: 16.0),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 160.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    Text('$rating'),
                    SizedBox(width: 16.0),
                    Icon(Icons.timer, color: Colors.grey),
                    Text(time),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.monetization_on, color: Colors.grey, size: 16.0),
                    SizedBox(width: 4.0),
                    Text(price),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
