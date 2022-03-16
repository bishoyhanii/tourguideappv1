import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MuseumofislamicartsPageWidget.dart';
import 'drawer_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
            size: 24,
          ),
          actions: [
            Icon(
              Icons.filter_list,
              color: Colors.black,
              size: 24,
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.95, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                            child: Text(
                              'Recomended',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                elevation: 0,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MuseumofislamicartsPageWidget(),
                                          ));
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(7, 7, 7, 7),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.network(
                                                  'https://www.egypttoday.com/siteimages/Larg/45692.jpg',
                                                  width: 350,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 5, 5, 5),
                                            child: Text(
                                              'Museum of islamic arts',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                          child: Text(
                                            'Price',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://lp-cms-production.imgix.net/2020-11/0c083bfe12667d356c591c3072498e27-coptic-museum.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: Text(
                                        'Coptic museum',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/d0/bc/6a.jpg',
                                        width: 350,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: Text(
                                        'The Hanging Church',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://www.traveltoegypt.net/front/images/blog/Nubian-museum.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: Text(
                                        'The Nubian Museum',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://unitedguidestravel.com/wp-content/uploads/2020/08/unfinished-obelisk-870x500.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: Text(
                                        'The Unfinished obelisk',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                          child: Text(
                            'Most Trending',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.white,
                                  elevation: 0,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            7, 7, 7, 7),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://www.flyingcarpettours.com/files/large/596096893-Nubian-Museum.jpg',
                                            width: 350,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                        child: Text(
                                          'The Nubian Museum',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                        child: Text(
                                          'Price',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/df/cd/03.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Philae',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://lp-cms-production.imgix.net/2019-06/76341c05c43f3804f156d84af8ae1415-tomb-of-ramses-vi-kv-9.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Ramesses The 6th Tomp',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://www.cleopatraegypttours.com/wp-content/uploads/2020/01/Luxor-Temple.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'luxor temple',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://egyptianstreets.com/wp-content/uploads/2019/11/shutterstock_378011434.v1.jpg',
                                          width: 350,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Cairo tower',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Price',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                          child: Text(
                            'Most Recent',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.white,
                            elevation: 0,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 7, 7, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'https://images.memphistours.com/large/844737225_3%20(2)%20(1).jpg',
                                      width: 420,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Egyption Muesum',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Price',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.white,
                            elevation: 0,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 7, 7, 7),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'https://d1b3667xvzs6rz.cloudfront.net/2020/02/Baron-4-768x430.jpg',
                                      width: 420,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Baron Palace',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Text(
                                    'Price',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          elevation: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://static.smarttravelapp.com/data/pois/25504_M1_1534305726.jpg',
                                    width: 420,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'El-Tabia Mosque',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Price',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          elevation: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://i.pinimg.com/736x/1e/a5/2b/1ea52b524cc475a71368fafe23ddf812.jpg',
                                    width: 420,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Agilkia Island',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Price',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          elevation: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/df/0e/24.jpg',
                                    width: 420,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Habu Temple Ramesses III',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Price',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
