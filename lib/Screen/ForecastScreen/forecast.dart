import 'package:flutter/material.dart';
import 'package:weathermobileapp/Utils/const.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.blue,  // Giả sử đây là _constants.primaryColor
      appBar: AppBar(
        title: const Text('Forecasts'),
        centerTitle: true,
        backgroundColor: Colors.blue,  // Giả sử đây là _constants.primaryColor
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              // Trống để gọi API khi cần
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: getHeight(context, 0.7),
              width: getWidth(context, 1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: getHeight(context, 0.3),
                    width: getWidth(context, 1),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.center,
                        colors: [
                          Color(0xffa9c1f5),
                          Color(0xff6696f5),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        // Image.asset("assets/sunny.png"),  // Chỉnh sửa để sử dụng icon dựa trên dữ liệu
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 30),
                          child: Text(
                            'Weather Name',  // Dữ liệu được gọi từ API
                            style: const TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // WeatherItem(value: '10', unit: "km/h", imageUrl: "assets/windspeed.png"),
                              // WeatherItem(value: '80', unit: "%", imageUrl: "assets/humidity.png"),
                              // WeatherItem(value: '60', unit: "%", imageUrl: "assets/lightrain.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20),
                  //   child: ListView.builder(
                  //     itemCount: 5,  // Giả sử có 5 dự báo
                  //     itemBuilder: (context, index) {
                  //       return Card(
                  //         elevation: 3.0,
                  //         margin: const EdgeInsets.only(bottom: 20),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Column(
                  //             children: [
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 children: [
                  //                   Text('Forecast Date', style: const TextStyle(color: Color(0xff6696f5))),
                  //                   Row(
                  //                     children: [
                  //                       Text('Min Temp', style: TextStyle(color: Colors.grey, fontSize: 30)),
                  //                       Text('°', style: TextStyle(color: Colors.grey, fontSize: 30)),
                  //                     ],
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       Text('Max Temp', style: TextStyle(color: Colors.black, fontSize: 30)),
                  //                       Text('°', style: TextStyle(color: Colors.black, fontSize: 30)),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //               const SizedBox(height: 10),
                  //               Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Image.asset('assets/sunny.png', width: 30),  // Dữ liệu icon dự báo
                  //                       const SizedBox(width: 5),
                  //                       const Text('Weather Name', style: TextStyle(fontSize: 16, color: Colors.grey)),
                  //                     ],
                  //                   ),
                  //                   Row(
                  //                     children: [
                  //                       const Text('Chance of Rain', style: TextStyle(fontSize: 18, color: Colors.grey)),
                  //                       const SizedBox(width: 5),
                  //                       Image.asset('assets/lightrain.png', width: 30),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherItem extends StatelessWidget {
  final String value;
  final String unit;
  final String imageUrl;

  const WeatherItem({
    Key? key,
    required this.value,
    required this.unit,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, width: 40),
        Text('$value $unit', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
