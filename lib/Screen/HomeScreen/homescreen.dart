import 'package:flutter/material.dart';
import 'package:weathermobileapp/Routers/routername.dart';
import 'package:weathermobileapp/Utils/const.dart';
import 'package:go_router/go_router.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Thêm từ khóa const vào constructor



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phần Icon Vị trí và Avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onPressed: () {}, // onPress để trống
                  ),
                  Text(
                    "Current Location",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // IconButton(
                  //   icon: CircleAvatar(
                  //     backgroundImage: AssetImage('assets/avatar.jpg'),
                  //   ),
                  //   onPressed: () {}, // onPress để trống
                  // ),
                ],
              ),
              SizedBox(height: 20),

              // Phần thông tin thời tiết chính
              Center(
                child: Column(
                  children: [
                    Text(
                      "32°C",
                      style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sunny",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Friday, October 10",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Thông tin chi tiết thời tiết (tốc độ gió, độ ẩm, mức độ mây)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherDetail(icon: Icons.air, label: "Wind", value: "10 km/h"),
                  WeatherDetail(icon: Icons.opacity, label: "Humidity", value: "60%"),
                  WeatherDetail(icon: Icons.cloud, label: "Cloudiness", value: "20%"),
                ],
              ),
              SizedBox(height: getHeight(context, 0.05)),

              // Tiêu đề "7 Days Forecast" và nút Forecast
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "7 Days Forecast",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: ()  {
                          context.pushNamed(RoutersName.forecastName);
                    },
                    child: Text("Forecast", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Dự báo thời tiết theo giờ (chiếm 40% chiều cao màn hình)
              Container(
                height: getHeight(context, 0.2), // Chiều cao chiếm 40% màn hình
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Thiết lập hiển thị ngang
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {}, // onTap để trống
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("10:00 AM"),
                            Icon(Icons.wb_sunny, size: 30, color: Colors.orange),
                            Text("28°C"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Widget cho các thông tin chi tiết của thời tiết (ví dụ: gió, độ ẩm)
class WeatherDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const WeatherDetail({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey)),
        Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

// Giả sử ForecastDetailPage là trang chi tiết dự báo
class ForecastDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forecast Detail"),
      ),
      body: Center(
        child: Text("Chi tiết dự báo thời tiết trong 7 ngày."),
      ),
    );
  }
}
