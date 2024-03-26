import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;

  const TextFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );

   final sendBtn = IconButton(
          onPressed: (){
            final textValue = textController.value.text;
            // print("onPressed: $textValue.");
            onValue(textValue);
            textController.clear();
          }, 
          icon: const Icon(Icons.send_outlined)
          );

    final inputDecoration = InputDecoration(
        hintText: "End your message with a '?'",
        enabledBorder: outlineInputBorder,
        filled: true,
        suffixIcon: sendBtn
      );

    return TextFormField(
      // keyboardType: TextInputType.emailAddress,
      onTapOutside: (evt)=>focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("On Submit: $value.");
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //     print("On Changed: $value.");
      // },
    );
  }
}