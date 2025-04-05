import 'package:advanced_news_app/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key, required this.article});

  final ArticleModel article;

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  late WebViewController controller;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.article.content ?? ""));
     print(widget.article.content);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(
                context); // This pops the current screen off the stack
          },
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Newsly",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
          child: WebViewWidget(controller: controller,))
    );
  }
}
//Padding(
//   padding: const EdgeInsets.all(16.0),
//   child: Column(
//     children: [
//       Text(
//         article.title ?? "",
//         softWrap: true,
//         style: const TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const SizedBox(
//         height: 20,
//       ),
//       ClipRRect(
//         borderRadius: BorderRadius.circular(30),
//         child: Image.network(
//           article.image ??
//               "https://coffective.com/wp-content/uploads/2018/06/default-featured-image.png.jpg",
//           fit: BoxFit.cover,
//           width: double.infinity,
//           height: 300,
//         ),
//       ),
//       const SizedBox(
//         height: 5,
//       ),
//       Text(
//         article.content ?? " ",
//         softWrap: true,
//         style: const TextStyle(
//           fontSize: 20,
//           color: Colors.black54,
//         ),
//       ),
//     ],
//   ),
// ),