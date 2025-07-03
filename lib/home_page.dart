import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Homepage"),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_important),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 140, 255),
        elevation: 50.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          tooltip: "Menu icon",
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),


      body: SingleChildScrollView(
        child: Column( 
          children: [
            const SizedBox(height: 10),
            const Text(
              "LOREM IPSUM",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset.zero,
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: const Center(
                child: Text("Welcome"),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('asset/images/GAMBAR.JPG'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ElevatedButton(
                  onPressed: null,
                  child: Text("Add to cart"),
                ),
                Icon(Icons.shopping_cart),
                SizedBox(width: 10),
                Icon(Icons.favorite),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var image in [
                  'Capture.PNG',
                  'Capture1.PNG',
                  'Capture2.PNG',
                  'Capture3.PNG',
                  'GAMBAR.JPG',
                ])
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'asset/images/$image',
                        width: 150, // Tambahkan ini agar geser terasa
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
