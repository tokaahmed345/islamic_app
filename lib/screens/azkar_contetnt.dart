import 'dart:convert';
import 'package:flutter/material.dart';
class AzkarContent extends StatelessWidget {
  const AzkarContent({super.key});
  static String id = "AzkarContent";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final azkarName = args['name'];
    final azkarId = args['section_id']; 

    var screenSize = MediaQuery.of(context).size;
    double fontSize = screenSize.width > 600 ? 30 : 25;
    double padding = screenSize.width > 600 ? 20.0 : 10.0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          azkarName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: screenSize.width > 600 ? 35 : 25),
        ),
        backgroundColor: const Color(0xff161853),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            color: Colors.white,
            Icons.arrow_back_ios, size: screenSize.width > 600 ? 40 : 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xff161853),
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("assets/images/content.json"), 
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error.toString()}"));
            }
        
            if (snapshot.hasData) {
              List azkarContent = json.decode(snapshot.data!);
           List filteredAzkar=        azkarContent.where((data)=>data['section_id']==azkarId).toList();
        
              if (filteredAzkar.isEmpty) {
                return const Center(child: Text("لا توجد أذكار متاحة لهذا القسم."));
              } else {
                return ListView.builder(
                  itemCount: filteredAzkar.length,
                  itemBuilder: (context, index) {
                    var data = filteredAzkar[index];
                    return Padding(
                      padding: EdgeInsets.all(padding),
                      child: Padding(
                        padding: EdgeInsets.all(padding),
                        child: Container(
                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff8e2680),
                                          const Color.fromARGB(255, 186, 70, 139)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )),
                          child: ListTile(
                            title: Text(
                              data['reference'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              data['content'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: fontSize,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
