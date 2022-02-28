import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String username;
  final String uid;
  final String description;
  final String postId;
  final DateTime datePulished;
  final String profileImage;
  final List likes;
  final String postUrl;

  Post({
    required this.username,
    required this.uid,
    required this.description,
    required this.postId,
    required this.datePulished,
    required this.profileImage,
    required this.likes,
    required this.postUrl,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'description': description,
        'postId': postId,
        'datePulished': datePulished,
        'profileImage': profileImage,
        'likes': likes,
        'postUrl': postUrl,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      postId: snapshot['postId'],
      datePulished: snapshot['datePulished'],
      profileImage: snapshot['profileImage'],
      likes: snapshot['likes'],
      postUrl: snapshot['postUrl'],
    );
  }
}
