import 'package:flutter/material.dart';
import 'package:reelproject/components/animation.dart';
import 'package:reelproject/screens/sponsers.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
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

  late double sliderValue; // Current slider value
  late double minwrite; // Minimum value for the slider
  late double maxwrite; // Maximum value for the slider
  late TextEditingController sliderController; // Controller for slider text

  @override
  void initState() {
    super.initState();

    // Initialize variables
    minwrite = 0; // Minimum slider value
    maxwrite = 100; // Maximum slider value
    sliderValue = 100; // Initial slider value

    // Initialize TextEditingController
    sliderController =
        TextEditingController(text: sliderValue.round().toString());
  }

  @override
  void dispose() {
    // Dispose the controller to prevent memory leaks
    sliderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 60,
          indicatorColor: Colors.transparent,
          backgroundColor: Colors.black,
          destinations: <NavigationDestination>[
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                label: 'home'),
            NavigationDestination(
                icon: Icon(Icons.camera_enhance_outlined), label: 'creator'),
            NavigationDestination(
                icon: Icon(Icons.video_camera_front_outlined), label: 'reels'),
            NavigationDestination(
                icon: Icon(Icons.rocket_outlined), label: 'contestent'),
            NavigationDestination(
                icon: Icon(Icons.rocket_outlined), label: 'reward'),
          ],
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // appbar
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
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
                //
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white60),
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
                                  child:
                                      Icon(Icons.person, color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                category["title"]!,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.yellow),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                //  createor
                SizedBox(
                  height: 20,
                ),

                Text(
                  'My Contests',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReelApprovalCard()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "POOL 100",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                              Text(
                                "MEGA 1 CORE",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                          // SizedBox(height: 8),
                          // Contest Details
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left Avatar
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.purple.shade300,
                                    child: Icon(Icons.mic, color: Colors.white),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Team 1",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.yellow),
                                  ),
                                ],
                              ),
                              SizedBox(width: 16),
                              // Contest Info
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "CONTEST 1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "LIVE",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // SizedBox(height: 8),
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Slider value displayed in a TextField

                                          // Slider widget
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: SliderTheme(
                                              data: SliderThemeData(
                                                activeTrackColor: Colors
                                                    .green, // Active portion of the slider
                                                inactiveTrackColor: Colors
                                                    .grey, // Inactive portion of the slider
                                                thumbShape:
                                                    const RoundSliderThumbShape(
                                                        enabledThumbRadius: 8),
                                                trackHeight: 5,

                                                showValueIndicator:
                                                    ShowValueIndicator.always,
                                              ),
                                              child: Slider(
                                                value: sliderValue,
                                                onChanged: (double newValue) {
                                                  setState(() {
                                                    sliderValue = newValue.clamp(
                                                        minwrite,
                                                        maxwrite); // Clamp the value
                                                    sliderController.text =
                                                        sliderValue
                                                            .round()
                                                            .toString(); // Update text field
                                                  });
                                                },
                                                min: minwrite,
                                                max: maxwrite,
                                                divisions:
                                                    20, // Number of steps in the slider
                                                label: sliderValue
                                                    .round()
                                                    .toString(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              // Right Avatar
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.orange.shade300,
                                    child:
                                        Icon(Icons.person, color: Colors.white),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Ends",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(height: 16),
                          // Bottom Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "All Category",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.yellow),
                              ),
                              Text(
                                "16 Nov, 12:30 PM",
                                style: TextStyle(
                                  fontSize: 12,
                                  // color: Colors.red
                                  // ,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "17 Nov, 12 AM",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // upcoming context
                Text(
                  'Upcoming Contests',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 6),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "POOL 100",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(
                              "MEGA 1 CORE",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                        // SizedBox(height: 8),
                        // Contest Details
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Left Avatar
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.purple.shade300,
                                  child:
                                      Icon(Icons.person, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  // height: 10,
                                  child: Text(
                                    'Join',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 16),
                            // Contest Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "CONTEST 2",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "1hr 0m",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "1:30 PM",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // SizedBox(height: 8),
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Slider value displayed in a TextField

                                        // Slider widget
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: SliderTheme(
                                            data: SliderThemeData(
                                              activeTrackColor: Colors
                                                  .green, // Active portion of the slider
                                              inactiveTrackColor: Colors
                                                  .grey, // Inactive portion of the slider
                                              thumbShape:
                                                  const RoundSliderThumbShape(
                                                      enabledThumbRadius: 8),
                                              trackHeight: 5,

                                              showValueIndicator:
                                                  ShowValueIndicator.always,
                                            ),
                                            child: Slider(
                                              value: sliderValue,
                                              onChanged: (double newValue) {
                                                setState(() {
                                                  sliderValue = newValue.clamp(
                                                      minwrite,
                                                      maxwrite); // Clamp the value
                                                  sliderController.text =
                                                      sliderValue
                                                          .round()
                                                          .toString(); // Update text field
                                                });
                                              },
                                              min: minwrite,
                                              max: maxwrite,
                                              divisions:
                                                  20, // Number of steps in the slider
                                              label: sliderValue
                                                  .round()
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            // Right Avatar
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.orange.shade300,
                                  child:
                                      Icon(Icons.person, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // SizedBox(height: 16),
                        // Bottom Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Category",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.yellow),
                            ),
                            Text(
                              "16 Nov, 1:30 PM",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Colors.red
                                // ,
                                color: Colors.yellow,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "17 Nov, 1 AM",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.yellow,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "POOL 100",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text(
                                  "MEGA 1 CORE",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            // SizedBox(height: 8),
                            // Contest Details
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Left Avatar
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.purple.shade300,
                                      child: Icon(Icons.person,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      // height: 10,
                                      child: Text(
                                        'Join',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 16),
                                // Contest Info
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "CONTEST 2",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellow),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "1hr 0m",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "1:30 PM",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // SizedBox(height: 8),
                                      Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // Slider value displayed in a TextField

                                            // Slider widget
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: SliderTheme(
                                                data: SliderThemeData(
                                                  activeTrackColor: Colors
                                                      .green, // Active portion of the slider
                                                  inactiveTrackColor: Colors
                                                      .grey, // Inactive portion of the slider
                                                  thumbShape:
                                                      const RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              8),
                                                  trackHeight: 5,

                                                  showValueIndicator:
                                                      ShowValueIndicator.always,
                                                ),
                                                child: Slider(
                                                  value: sliderValue,
                                                  onChanged: (double newValue) {
                                                    setState(() {
                                                      sliderValue = newValue.clamp(
                                                          minwrite,
                                                          maxwrite); // Clamp the value
                                                      sliderController.text =
                                                          sliderValue
                                                              .round()
                                                              .toString(); // Update text field
                                                    });
                                                  },
                                                  min: minwrite,
                                                  max: maxwrite,
                                                  divisions:
                                                      20, // Number of steps in the slider
                                                  label: sliderValue
                                                      .round()
                                                      .toString(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                // Right Avatar
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.orange.shade300,
                                      child: Icon(Icons.person,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(height: 16),
                            // Bottom Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All Category",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.yellow),
                                ),
                                Text(
                                  "16 Nov, 1:30 PM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    // color: Colors.red
                                    // ,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "17 Nov, 1 AM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
