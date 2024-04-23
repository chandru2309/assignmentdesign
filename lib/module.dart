import 'package:flutter/material.dart';

class AssignmentModule extends StatefulWidget {
  const AssignmentModule({Key? key}) : super(key: key);

  @override
  State<AssignmentModule> createState() => _AssignmentModuleState();
}

class _AssignmentModuleState extends State<AssignmentModule> {
  final List<String> imageUrls = [
    'image/download.jpg',
    'image/shirt.jpg',
    'image/girl1.jpg',
    'image/girl.jpg',
  ];

  final List<String> imageTexts = [
    '4.1',
    '4.5',
    '3.9',
    '4.3',
  ];
  final List<String> views = ['1.3K', '111', '2.4K', '1.6K'];
  final List<String> names = ['Roadster', 'Ketch', 'WhiteLeaf', 'Fotos'];
  final List<String> clothes = [
    'Denim Casual Shirt',
    'Slim Fit',
    'Cotton',
    'Wrap around'
  ];
  final List<String> amount = [
    '\u{20B9} 467',
    '\u{20B9} 540',
    '\u{20B9} 750',
    '\u{20B9} 699'
  ];
  final List<String> discount = [
    '\u{20B9} 900',
    '\u{20B9} 1200',
    '\u{20B9} 1450',
    '\u{20B9} 1425',
  ];
  final List<String> offer = [
    '(70% OFF)',
    '(60% OFF)',
    '(75% OFF)',
    '(65% OFF)',
  ];
  final List<String> price = [
    'Best Price \u{20B9}319',
    'Best Price \u{20B9}279',
    'Best Price \u{20B9}215',
    'Best Price \u{20B9}320',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
        title: Text('Mens Casual wear'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.add_box_outlined),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.favorite_border),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.pinkAccent,
              child: ListTile(

                title: Center(
                  child: Text(
                    'FLAT 200 OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'MYNTRA200',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 100.0,
                  mainAxisExtent: 355,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Container(
                        height: 265,
                        width: 250,
                        child: Image.asset(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 240,
                        left: 10,
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                imageTexts[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            Icon(Icons.star,
                                size: 12, color: Color(0xff088F8F)),
                            Text(
                              '|',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              views[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 265,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    names[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          4), // Adjust the space between the two texts
                                  Text(
                                    clothes[
                                        index], // Add your additional text here
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Text(
                                        amount[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        discount[index],
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        offer[index],
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 1),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            price[index],
                                            style: TextStyle(
                                                color: Colors.greenAccent.shade700,
                                                fontWeight: FontWeight.bold,fontSize: 11),
                                          ),
                                          Text('with coupon')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.favorite_border),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
