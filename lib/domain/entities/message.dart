enum FromWho{mine, hers}

class Message {
  final String text;
  final String? urlImg;
  final FromWho fromWho;

  Message({required this.text, this.urlImg, required this.fromWho});

}