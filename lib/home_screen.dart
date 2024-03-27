import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copy to Clipboard'),
      ),
      body: Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              _copyToClipBoard(controller.text);
            }, child: Text('Copy to Clipboard'))
          ],
        ),
      ),
    );
  }

  void _copyToClipBoard(String number){
    Clipboard.setData(ClipboardData(text: number));
  }
}
