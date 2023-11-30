import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product Name1',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/saree.jpg', // Replace with your image path
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Product Price: \$500.00',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Product Feature Description:\nRosy pink jorget saree.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowPage()),
                );
              },
              child: Text('Buy Now'),
            ),
            Text(
              'Product Name2',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/bag.jpg', // Replace with your image path
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Product Price: \$1000.00',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Product Feature Description:\nGucci white bag.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowPage()),
                );
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle BKash payment method
                  },
                  icon: Image.asset(
                    'assets/images/bkash.jpg', // Replace with your image path
                    width: 50,
                    height: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle payment method 2
                  },
                  icon: Image.asset(
                    'assets/images/nagad.jpg', // Replace with payment method 2 icon path
                    width: 50,
                    height: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle payment method 2
                  },
                  icon: Image.asset(
                    'assets/images/rocket.jpg', // Replace with payment method 2 icon path
                    width: 50,
                    height: 50,
                  ),
                ),
                // Add more payment method buttons similarly
              ],
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              // Implement the dropdown options
              onChanged: (String? newValue) {
                // Handle dropdown changes
              },
              items: <String>[
                'Option 1',
                'Option 2',
                'Option 3',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
