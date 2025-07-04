import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final textInputController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder  = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(color: colors.primary, width: 2),
    );


    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        hintText: 'Mensaje',
        filled:true,
        
        suffixIcon: IconButton(
        icon: const Icon(Icons.send), 

        onPressed: () {

          final textValue = textInputController.value.text;
            // Aquí puedes agregar la lógica para enviar el mensaje
            print('Mensaje enviado: $textValue');
            textInputController.clear(); // Limpiar el campo de texto después de enviar

          },
        ),
      );


    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textInputController,
      decoration: inputDecoration,
      focusNode: focusNode,
      onFieldSubmitted: (value) => {
        
        print('Mensaje enviado: $value'),
        textInputController.clear(),
        focusNode.requestFocus() // Limpiar el campo de texto después de enviar
      },

    );

     
  }
}