import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingmall_flutter/models/model_auth.dart';

class TabProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Center(
      child : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile Tab"),
          LogoutButton(),
        ],
      )
    );

  }
}

class LogoutButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final authClient = Provider.of<FirebaseAuthProvider>(context, listen: false);
    
    return TextButton(onPressed: () async {
      await authClient.logout();
      ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Logout')));
      Navigator.of(context).pushReplacementNamed('/login');
    },
        child: Text('LOGOUT | 로그아웃'));
  }
}