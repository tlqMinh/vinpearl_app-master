import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:vinpearl_app/page_profile/profile_data.dart';
import 'package:vinpearl_app/user_data/data_user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Widget _textBox(
      String text,
      String name,
  ){
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(left: 15, bottom: 15),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          SizedBox(height: 3,),
          Text(name),
        ],
      ),
    );
  }

  ProfileDataSnapshot? profileDataSnapshot;

  TextEditingController txtHo = TextEditingController();
  TextEditingController txtTen = TextEditingController();
  TextEditingController txtSdt = TextEditingController();
  TextEditingController txtNamSinh = TextEditingController();

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text("Profile"),
        ),
      ),
      body: StreamBuilder<List<ProfileDataSnapshot>>(
        stream: ProfileDataSnapshot.getAll(),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Image(image: AssetImage('assets/images/logoVinP.png'), height: 150, width: 200,)
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                  Text("Tai khoan: ${user!.email!}", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 10,),

                  _textBox('Ho', "${profileDataSnapshot?.profileData?.ten}"),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

