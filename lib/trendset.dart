import 'package:catfish/artofwar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EComFormField extends TextFormField {
  EComFormField({
    super.key,
    this.textEditingController,
    this.hintText,
    this.errorText,
    this.isFilled,
    this.fillColor,
    this.maxLines,
    this.maxLength,
    this.onTap,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.inputType,
    this.inputAction,
    this.readOnly,
    this.formatters,
  }) :
        //assert(textEditingController != null, "Controller must not be null"),
        super(
          controller: textEditingController,
          maxLength: maxLength,
          maxLines: obscureText! ? 1 : maxLines,
          inputFormatters: formatters,
          obscureText: obscureText,
          readOnly: readOnly ?? false,
          keyboardType: inputType,
          textInputAction: inputAction,
          onTap: onTap,
          decoration: InputDecoration(
            filled: isFilled ?? false,
            fillColor: fillColor,
            hintText: hintText,
            // hintStyle: CustomTheme.themeData.textTheme.headlineSmall!
            //  .copyWith(color: CustomTheme.textColor.withOpacity(0.9)),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              // borderSide: BorderSide(color: CustomTheme.appPrimaryColor),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            errorText: errorText,
          ),
          // onChanged: onChanged,
          // style: CustomTheme.themeData.textTheme.headlineSmall!
          //     .copyWith(color: CustomTheme.appBlack),
        ) {
    // TODO: implement EComFormField
    // throw UnimplementedError();
  }

  final TextEditingController? textEditingController;
  final String? hintText;
  final String? errorText;
  final bool? isFilled;
  final Color? fillColor;
  final int? maxLines, maxLength;
  final bool? obscureText;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool? readOnly;
  final List<TextInputFormatter>? formatters;
}

class Trendset extends StatefulWidget {
  const Trendset({super.key});

  @override
  State<Trendset> createState() => _TrendsetState();
}

class _TrendsetState extends State<Trendset> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    var email;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Trendsetter"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              // Image.asset(
              //   "assets/images/igloo.png",
              //   width: 200,
              //  height: 200,
              // ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Column(
                      children: [
                        Icon(Icons.add_alert, size: 50),
                        Text("Trendsetter"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                      color: Colors.redAccent,
                      width: 250.0,
                      height: 40.0,
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("This is Red"),
                      )))),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              EComFormField(
                textEditingController: email,
                hintText: 'Any value...',
                onChanged: (val) {},
                errorText: 'error',
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                      color: Colors.green,
                      width: 300.0,
                      height: 40.0,
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("This is Green"),
                      )))),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                      color: Colors.blueAccent,
                      width: 260.0,
                      height: 40.0,
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("This is Blue"),
                      )))),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40),
                      backgroundColor: (Colors.blue),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    iconAlignment: IconAlignment.end,
                    onPressed: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const artOfWar()),
                      );*/
                      Navigator.pushNamedAndRemoveUntil(context, artOfWar.id,
                          (Route<dynamic> route) => false);
                    },
                    child: const Text('Contact Me')),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Container(
                      color: Colors.yellowAccent,
                      width: 300.0,
                      height: 40.0,
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("This is Yellow"),
                      ))))
            ])));
  }
}
