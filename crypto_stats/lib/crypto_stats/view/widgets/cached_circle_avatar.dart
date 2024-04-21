// ignore_for_file: public_member_api_docs, duplicate_ignore

part of ui.library;


class CachedCircleAvatar extends StatelessWidget {
  final String url;
  
  const CachedCircleAvatar({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20, backgroundImage: CachedNetworkImageProvider(url));
  }
}
