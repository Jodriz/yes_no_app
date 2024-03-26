import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infraestructure/models/yes_no_model.dart';

class YesNoAnswer {

  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");
    final model = YesNoModel.fromMap(map: response.data);
    return Message(
      text: model.answer, 
      fromWho: FromWho.hers,
      urlImg: model.imageUrl
      );
  }
}