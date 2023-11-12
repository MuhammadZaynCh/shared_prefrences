
import 'package:chapter_9_shared_prefrences/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();
  final countryController = TextEditingController();
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sign Up '),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),),
                  SizedBox(height: 10,),
                  Text(" it's fun and easy!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                ],
              ),

              const SizedBox(height: 30,),

              TextFormField(
                controller: fullNameController,
                keyboardType: TextInputType.name,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Full Name',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Phone Number',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Age',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: countryController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Country',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: genderController,
                keyboardType: TextInputType.name,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Gender',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Email',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20,),

              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.black26,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.teal.withOpacity(.6),
                  filled: true,
                  // hintText: 'Password',
                  // hintStyle: const TextStyle(color: Colors.white),
                  labelText: 'Create Password',
                  labelStyle: const TextStyle(color: Colors.blueGrey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 40,),

              InkWell(
                onTap: ()async{
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen()
                      ));
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString('fullName', fullNameController.text.toString());
                  sp.setString('phone', phoneController.text.toString());
                  sp.setString('age', ageController.text.toString());
                  sp.setString('country', countryController.text.toString());
                  sp.setString('gender', genderController.text.toString());
                  sp.setString('email', emailController.text.toString());
                  sp.setString('password', passwordController.text.toString());
                  sp.setBool('isLogin', true);

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: const Center(
                    child: Text('REGISTER',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

// Future<void> zainCh() async {
//
//   await Future.delayed(const Duration(seconds: 5));
//
//   print('delayed');
// }

}