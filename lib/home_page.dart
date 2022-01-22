import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catagory = [
    'Econmic',
    'Sports',
    'Entertainment',
    'Cultural',
    'Technology',
    'Political',
    'International'
    
  ];

  List news = [
    {
      'heading': 'this is awesome',
      'author': 'rir rakib'
    },
    {
      'heading': 'this is osthir',
      'author': 'humayon kabir'
    },
    {
      'heading': 'this is wow',
      'author': 'himangsu'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explore',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
            ),

            SizedBox(height: 20,),
            TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
            ),
          ),

          SizedBox(height: 20,),

          Container(
            height: 35,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: catagory.length,
                itemBuilder: (context, index) {
                  return MaterialButton(
                    minWidth: 80,
                    color: Colors.deepPurple,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      catagory[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  );
                }),
          ),
          SizedBox(height:20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your News',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),),

            Text('See All')
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(itemBuilder: (contxt, index) {
            return Card(
                child: ListTile(
              leading: Image.asset('images/logo.png'),
              title: Text(
                'This is an example of news headline of new api',
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text('Author:'),
            ));
          },
          itemCount: news.length,
          ))


          ],
        ),
      ),
    );
  }
}