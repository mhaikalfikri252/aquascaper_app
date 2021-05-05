import 'package:aquascaper_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(UserModel user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
    });
  }

  static Future<UserModel> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return UserModel(
      id,
      snapshot.data()['email'],
      name: snapshot.data()['name'],
    );
  }
}
