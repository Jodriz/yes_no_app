class YesNoModel {
  final String answer;
  final bool forced;
  final String imageUrl;

  YesNoModel({required this.answer, required this.forced, required this.imageUrl});
  
  YesNoModel.fromMap({required Map<String, dynamic>map}): this(answer: map["answer"], forced: map["forced"], imageUrl: map["image"]);

}