import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  CollectionReference database = FirebaseFirestore.instance.collection('user');
  late QuerySnapshot querySnapshot;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget> [
          const SizedBox(height: 150,),
          Column(
            children: <Widget> [
              Image.asset('assets/cocomong.png'),
              const SizedBox(height: 16,)
            ],
          ),
          const SizedBox(height: 120,),


          ElevatedButton(
              onPressed: () async {
                final UserCredential userCredential = await signInWithGoogle();

                User? user = userCredential.user;

                if(user != null){
                  int i;
                  querySnapshot = await database.get();

                  for(i = 0; i < querySnapshot.docs.length; i++){
                    var a = querySnapshot.docs[i];

                    if(a.get('uid') == user.uid){
                      break;
                    }
                  }

                  if(i == (querySnapshot.docs.length)){
                    database.doc(user.uid).set({
                      'email' : user.email.toString(),
                      'name': user.displayName.toString(),
                      'uid': user.uid,
                    });
                  }

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => HomePage(
                          user: user,
                        ),
                    ),
                  );

                }

              },
              child: const Text('GOOGLE'),
          ),
        ],
      ),
    );
  }
}
