import 'package:flutter/material.dart';
import 'package:tourguide/Model/city.dart';
import 'package:tourguide/Model/city_locations.dart';
import 'package:url_launcher/url_launcher.dart';

class Cairo extends StatefulWidget {

  Cairo();

  @override
  State<Cairo> createState() => _CairoState();
}

class _CairoState extends State<Cairo> {
  List<CityLocations> loactions = [
    CityLocations("Pyramids of giza", "Giza, Egypt",
        "https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg"),
    CityLocations("Egyption Muesum", "Giza, Egypt",
        "https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg"),
    CityLocations("Cairo tower", "Giza, Egypt",
        "https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg")
  ];

  List<CityModel> data = [
    CityModel(
        "Pyramids",
        "https://images.memphistours.com/large/34d5b5a3fbaa4b3b5d9487bf924b0145.jpg",
        "Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate",
        "The Great Pyramid of Giza is the oldest monument on the list of the seven wonders of the Ancient world. It was built for the fourth dynasty pharaoh Khufu and was completed around 2560 BCE. ... Some evidence and theories suggest that 20,000 workers over the course of 20 years built the great pyramid.",
        'https://goo.gl/maps/3Uv6CnhYqs7n1KeeA'),
    CityModel(
        "Egyption Muesum",
        "https://images.memphistours.com/large/34d5b5a3fbaa4b3b5d9487bf924b0145.jpg",
        "Wasim Hasan, Ismailia, Qasr El Nil, Cairo Governorate",
        "The Egyptian Museum is the oldest archaeological museum in the Middle East, and houses the largest collection of Pharaonic antiquities in the world. The museum displays an extensive collection spanning from the Predynastic Period to the Greco-Roman Era.",
        'https://goo.gl/maps/JbeE6qHJyg16rXFz7'),
    CityModel(
        "Cairo tower",
        "https://images.memphistours.com/large/34d5b5a3fbaa4b3b5d9487bf924b0145.jpg",
        "Zamalek, Cairo Governorate",
        "At a height of 600 feet, this tower offers magnificent views of the entire city and monuments from its revolving rooftop restaurant and bar.",
        'https://g.page/CairoTower?share'),
  ];

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Cairo'),
          ),
          body: ListView.builder(
              itemCount: loactions.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (Context) => DataScreen(data[index])));
                      });
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              loactions[index].name,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                              ),),
                            Text(
                              loactions[index].city,
                              style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image.network(loactions[index].ImageUrl,
                                fit: BoxFit.cover),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
  );
}

class DataScreen extends StatelessWidget {
  CityModel model;

  DataScreen(this.model);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity, child: Image.network(model.imageUrl)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [

                    Divider(),
                    Text("Name" , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(model.name ,style: TextStyle(
                      fontSize: 20,

                    )),
                    Divider(),
                    Text("Description",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(model.description,style: TextStyle(
                      fontSize: 20,

                    )),
                    Divider(),
                    Text("Address",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(model.address,style: TextStyle(
                      fontSize: 20,

                    )),
                    Divider(),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          _launchURL();
                        },
                        color: Colors.blue,
                        child: Text("Open In Goole Maps"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(model.googleMapsUrl))
      throw 'Could not launch ${model.googleMapsUrl}';
  }
}
