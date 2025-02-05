import 'package:flutter/material.dart';
import 'package:iot_thai_moneyshare_project/views/money_input_ui.dart';
 
class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});
 
  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}
 
class _SplashScreenUiState extends State<SplashScreenUi> {

  @override
  void initState() {
    // โค้ดหน่วงหน้าจอ
    Future.delayed( 
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement( 
        context,
        MaterialPageRoute( 
          builder: (context) => MoneyInputUI(),
        ),
      ),
      );
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                'เเชร์เงินกันเถอะ',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Create by HARU SAU',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}