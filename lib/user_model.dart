class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Prajwal',
  imageUrl: 'images/photo.jpeg',
  isOnline: true,
);

// USERS
final User veerK = User(
  id: 1,
  name: 'Veer Kapur',
  imageUrl: 'images/pankaj1.jpg',
  isOnline: true,
);
final User pankajK = User(
  id: 2,
  name: 'Pankaj Kumar',
  imageUrl: 'images/pankaj.jpg',
  isOnline: true,
);
final User karanG = User(
  id: 3,
  name: 'Karan gupta',
  imageUrl: 'images/karan.jpg',
  isOnline: false,
);
final User shwetaA = User(
  id: 4,
  name: 'Shweta Alekar',
  imageUrl: 'images/shweta.jpg',
  isOnline: false,
);
final User sahilV = User(
  id: 5,
  name: 'Sahil Verma',
  imageUrl: 'images/sahil.jpg',
  isOnline: true,
);
