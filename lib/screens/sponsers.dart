import 'package:flutter/material.dart';

class ReelApprovalCard extends StatelessWidget {
  final List<Map<String, String>> categoriesList1 = [
    {
      "title": "All Category",
    },
    {
      "title": "Comedy",
    },
    {
      "title": "Art",
    },
    {
      "title": "Vlog",
    },
    {
      "title": "Food",
    },
    {
      "title": "education",
    },
  ];

  final List<Map<String, String>> categoriesList = [
    {
      "title": "xyz 1",
    },
    {
      "title": "xyz 2",
    },
    {
      "title": "xyz 3",
    },
    {
      "title": "xyz 4",
    },
    {
      "title": "xyz 5",
    },
    {
      "title": "xyz 6",
    },
    {
      "title": "xyz 7",
    },
    {
      "title": "xyz 8",
    },
    {
      "title": "xyz 9",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade700,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
              child: Row(
                children: [
                  Icon(
                    size: 30,
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.orange],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      'REELPE',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    size: 25,
                    Icons.notifications,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Icon(
                    size: 25,
                    Icons.wallet,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              // reverse: true,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoriesList1.map((category1) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0), // Space between items
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // child: Icon(Icons.person, color: Colors.white),
                          ),
                          // SizedBox(height: 5),
                          Text(
                            category1["title"]!,
                            style:
                                TextStyle(fontSize: 14, color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.pink,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            //  trending creator
            SizedBox(
              height: 20,
            ),

            SingleChildScrollView(
              // reverse: true,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoriesList.map((category) {
                  return GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => SubProducts(
                    //           categoryname: category["title"]!),
                    //     ),
                    //   );
                    // },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0), // Space between items
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // image: DecorationImage(
                              //   // image: AssetImage(category["image"]!),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.purple,
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            category["title"]!,
                            style:
                                TextStyle(fontSize: 14, color: Colors.yellow),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Contests',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.circular(25.0),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 63, 5, 104),
                    Colors.purple.shade200
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Avatar
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.purple.shade300,
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                            // SizedBox(height: 8),
                          ],
                        ),
                        // SizedBox(width: 16),
                        // Contest Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "You have not joined any contest",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(width: 16),
                        // Right Avatar
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.orange.shade300,
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(height: 16),
                    // Bottom Row
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Text(
              'Reel Approval',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.circular(25.0),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 63, 5, 104),
                    Colors.purple.shade200
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Left section: Upload area
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, size: 30, color: Colors.black),
                                SizedBox(height: 8),
                                Text(
                                  'Upload',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Max 1 min\nSize: 9:16',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(height: 8),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('Submit')),
                        ],
                      ),
                      SizedBox(width: 10),

                      // Middle section: Contest and slider
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Contest details
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'POOL 100',
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'CONTEST 2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.check_circle,
                                    color: Colors.green, size: 20),
                                SizedBox(width: 5),
                                Text(
                                  '12 Slots Left',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '0h 45m',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            // Slider
                            SliderTheme(
                              data: SliderThemeData(
                                thumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                inactiveTrackColor: Colors.grey,
                                trackHeight: 4,
                              ),
                              child: Slider(
                                value: 70,
                                min: 0,
                                max: 100,
                                onChanged: (value) {},
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rs 49 -',
                                      style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Any Category',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'It Takes 15 min\nfor approval',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),

                      // Right section: Avatar and approval button
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '13:20',
                            style: TextStyle(color: Colors.pink, fontSize: 12),
                          ),
                          SizedBox(height: 20),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('Approved')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
