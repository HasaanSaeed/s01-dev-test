part of ui.library;

class Profile extends StatelessWidget {
  const Profile(
      {Key? key,
      required this.message,
      required this.name,
      required this.avatar})
      : super(key: key);

  final String message;

  final String name;

  final AssetImage avatar;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(message, style: const TextStyle(fontSize: 17)),
                Text(name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ]),
          CircleAvatar(backgroundImage: avatar)
        ]);
  }
}
