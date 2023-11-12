
import 'package:chapter_9_shared_prefrences/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String email = '' , gender = '' , country = '' , age = '' , phone = '', fullName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
    SharedPreferences sp = await  SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    gender = sp.getString('gender') ?? '';
    country = sp.getString('country') ?? '';
    age = sp.getString('age') ?? '';
    phone = sp.getString('phone') ?? '';
    fullName = sp.getString('fullName') ?? '';
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Profile Details',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Email :',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(email.toString())
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Name :',style: TextStyle(fontWeight: FontWeight.bold),),
                  // SizedBox(width: 10,),
                  Text(fullName.toString())
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Phone # ',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(phone.toString())
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Age :',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(age.toString())
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Country :',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(country.toString())
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Gender :',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(gender.toString())
                ],
              ),

              const SizedBox(height: 370,),

              InkWell(
                onTap: ()async{
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.clear();

                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()
                      ));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Delete Account',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
