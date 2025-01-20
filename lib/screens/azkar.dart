import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:islamicapp/screens/azkar_contetnt.dart';

class Al_Azkar extends StatelessWidget {
  const Al_Azkar({super.key});
  static String id = "azkar";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double fontSize = screenSize.width > 600 ? 35 : 32; 

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Al_Azkar",
          style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.width > 600 ? 40 : 30), 
        ),
        backgroundColor: Color(0xff161853),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            
            Icons.arrow_back_ios, size: screenSize.width > 600 ? 40 : 30
            ,color: Colors.white,), 
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
color: Color(0xff161853),
        child: Stack(
          children: [
            FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString("assets/images/azkar.json"),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error.toString()}"),
                  );
                }
        
                if (snapshot.hasData) {
        List sections = json.decode(snapshot.data!);
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      return ListView.builder(
                        itemCount: sections.length,
                        itemBuilder: (context, index) {
                  var section = sections[index];
        
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: screenSize.width > 600 ? 20.0 : 16.0, 
                              horizontal: screenSize.width > 600 ? 40.0 : 16.0, 
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                AzkarContent.id,
                                  arguments: {
                              'name': section['name'],
                              'section_id': section['id']                             },
                                );
                              },
                              child: Container(
                                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff8e2680),
                      Color.fromARGB(255, 186, 70, 139)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
                                padding: EdgeInsets.all(screenSize.width > 600 ? 30.0 : 20.0), 
                                child: Center(
                                  child: Text(
                                    section['name'],
                                    style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
