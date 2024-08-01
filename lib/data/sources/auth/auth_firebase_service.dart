import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService{

  Future<void> signin();

  Future<void> signup(CreateUserReq createUserReq);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService{
  @override
  Future<void> signin() async{
  }

  @override
  Future<void> signup(CreateUserReq createUserReq) async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email, 
        password: createUserReq.password,
        );
    }on FirebaseAuthException catch(e){

    }
  }

}