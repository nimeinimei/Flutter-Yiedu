import 'package:flutter/material.dart';
import 'package:projectpractice/widget/RatingBar.dart';
import 'package:projectpractice/pages/course/PayOrder.dart';

class CourseDetail extends StatefulWidget {
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  //页面底部有一个类似底部导航栏的组件：我们使用自定义底部导航栏来实现

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              '课程详情',
              style: TextStyle(
                  color: Color.fromRGBO(56, 56, 56, 1.0),
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.share,
              color: Colors.black,
            )
          ],
        ),
        //!自定义底部导航栏
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              title: Text('咨询'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), title: Text('收藏')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add,color: Colors.red,),
                title: Text(
                  '立即购买',
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                ),
                backgroundColor: Colors.red),
          ],
          type: BottomNavigationBarType.fixed,
          fixedColor: Color.fromRGBO(80, 80, 80, 0.8), //改变选中时的颜色
          onTap: _onItemTapped,
        ),
        body: Container(
          //页面组件放置在占据全屏的带浅灰色的容器里面。
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(color: const Color(0xF2F6FCff)),
          child: Column(
            children: <Widget>[
              Container(
                height: 360,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/course2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 12.0),
                      height: 140.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            '跟简七一起学理财',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  RatingBar(
                                    clickable: false,
                                    size: 17.0,
                                    color: Colors.green,
                                    padding: 0.5,
                                    value: 4.8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      '4.8分',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              168, 168, 168, 1.0),
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      '10人学过',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              168, 168, 168, 1.0),
                                          fontSize: 15.0),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 3.0),
                                decoration: BoxDecoration(
                                    border: new Border.all(
                                        color: Colors.blue, width: 1.0),
                                    borderRadius:
                                        BorderRadius.circular(3.0) // 边色与边宽度
                                    ),
                                child: Text(
                                  '独家',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Color.fromRGBO(207, 207, 207, 1.0),
                            height: 2.0,
                            indent: 0.0,
                          ),
                          Text(
                            '￥398.0',
                            style: TextStyle(
                                color: Color.fromRGBO(224, 80, 45, 1.0),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 12.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '适用人群',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 0.0),
                      child: Text(
                        '零基础小白学理财，这门课就够了！',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      color: Color.fromRGBO(207, 207, 207, 1.0),
                      height: 2.0,
                      indent: 0.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 0.0),
                      child: Text(
                        '课程简介',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    //使用流式布局放置多行文本
                    Wrap(
                      children: <Widget>[
                        Text(
                          '这是课程简介' * 20,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )

// This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  //点击底部导航栏，跳转到对应的页面，改变索引
  void _onItemTapped(int index) {
    //根据index判断点击的是哪一个，进行路由跳转
    Navigator.push(context, MaterialPageRoute(builder: (context) {
    return PayOrder();
    }));
   
  }
}
