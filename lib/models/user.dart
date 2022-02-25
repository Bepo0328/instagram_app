class User {
  final String username;
  final String email;
  final String uid;
  final String bio;
  final List followers;
  final List following;
  final String photoUrl;

  User({
    required this.username,
    required this.email,
    required this.uid,
    required this.bio,
    required this.followers,
    required this.following,
    required this.photoUrl,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'uid': uid,
        'bio': bio,
        'followers': followers,
        'following': following,
        'photoUrl': photoUrl,
      };
}
