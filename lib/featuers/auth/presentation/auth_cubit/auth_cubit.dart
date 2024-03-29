import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String firstName;
  late String lastName;
  late String emailAddress;
  late String password;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  bool? termsAndConditionsChekBox=false;
  bool? obscurePasswordTextValue = true;

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errmsg: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errmsg: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errmsg: e.toString()));
    }
  }
  UpdateTermsAndConditionsChekBox({newValue}){
    termsAndConditionsChekBox=newValue;
    emit(TermsAndConditionsChekBoxState());
  }
  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
}
