import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    //Pyramids of Giza
    CityLocations("Egyption Muesum", "Cairo, Egypt",
        "https://www.ootlah.com/wp-content/uploads/2020/06/ca14dc9b03fccb924cd10977f6f3928d.jpg"),
    // Egyption Museum.
    CityLocations("Cairo tower", "Cairo, Egypt",
        "https://media.tacdn.com/media/attractions-splice-spp-674x446/09/9f/19/0c.jpg"),
    // Cairo tower
    CityLocations("Sphinx", "Giza, Egypt",
        "https://cdn.britannica.com/19/179519-049-250A6575.jpg"),
    // Sphinx
    CityLocations("Al-Mu'izz Street", "Cairo, Egypt",
        "https://www.egypttoday.com/siteimages/Larg/11082.jpg"),
    //El Muizz Street
    CityLocations("Coptic museum", "Cairo, Egypt",
        "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/67/82.jpg"),
    //Coptic Muesum
    CityLocations("Grand Egyption Muesum", "Giza, Egypt",
        "https://globetrender.com/wp-content/uploads/2021/05/pyramid_wall.png"),
    //Musuem of Islamic art
    CityLocations("The Hanging Church", "Cairo, Egypt",
        "https://www.egypttoursportal.com/images/2018/10/The-Interior-of-the-Hanging-Church-Egypt-Tours-Portal.jpg"),
    // hanging church
    CityLocations("Giza zoo", "Cairo, Egypt",
        "https://www.egypttoday.com/siteimages/Larg/43996.jpg"),
    // Giza zoo
    CityLocations("Baron Palace", "Cairo, Egypt",
        "https://d1b3667xvzs6rz.cloudfront.net/2020/02/Baron-4-768x430.jpg"),
    //Baron palace
  ];

  List<CityModel> data = [
    CityModel(
        "Pyramids of Giza",
        "https://images.memphistours.com/large/34d5b5a3fbaa4b3b5d9487bf924b0145.jpg",
        "Al Haram, Nazlet El-Semman, Al Giza Desert, Giza Governorate",
        "The Great Pyramid of Giza is the oldest monument on the list of the seven wonders of the Ancient world. It was built for the fourth dynasty pharaoh Khufu and was completed around 2560 BCE. ... Some evidence and theories suggest that 20,000 workers over the course of 20 years built the great pyramid.",
        'https://goo.gl/maps/3Uv6CnhYqs7n1KeeA',
        "Giza Egypt"),
    CityModel(
        "Egyption Muesum",
        "https://egyptianstreets.com/wp-content/uploads/2021/04/museum2.jpg",
        "Wasim Hasan, Ismailia, Qasr El Nil, Cairo Governorate",
        "The Egyptian Museum is the oldest archaeological museum in the Middle East, and houses the largest collection of Pharaonic antiquities in the world. The museum displays an extensive collection spanning from the Predynastic Period to the Greco-Roman Era.",
        'https://goo.gl/maps/JbeE6qHJyg16rXFz7',
        "Cairo Egypt"),
    CityModel(
        "Cairo tower",
        "https://images.memphistours.com/large/34d5b5a3fbaa4b3b5d9487bf924b0145.jpg",
        "Zamalek, Cairo Governorate",
        "At a height of 600 feet, this tower offers magnificent views of the entire city and monuments from its revolving rooftop restaurant and bar.",
        'https://g.page/CairoTower?share',
        "Cairo Egypt"),
    CityModel(
        "Sphinx",
        "https://img.freepik.com/free-photo/great-sphinx-piramids-famous-wonder-world-giza-egypt_133187-1818.jpg",
        "Al Giza Desert, Giza Governorate",
        "Colossal statues are one of the hallmarks of ancient Egyptian civilization, and the Great Sphinx of Giza is the most famous. It was carved directly out of the bedrock during the Fourth Dynasty (c.2613–2494 BC), which also makes it the oldest. Ancient Egyptian sphinxes represented the king with the body of a lion, in a clear demonstration of his power.",
        'https://goo.gl/maps/wKT9huhNuTfpfQhP7',
        "Giza Egypt"),
    CityModel(
        "Al-Mu'izz Street",
        "https://egypttimetravel.com/wp-content/uploads/2020/07/muizz-street.jpg",
        "El-Gamaleya, El Gamaliya, Cairo Governorate",
        "Al-Mu’izz Street is named after the Fatimid Caliph, al-Mu’izz li-Din Allah (341–365 AH / 953–975 AD), who first founded this street. Today, it is the largest open-air museum for Islamic monuments in the world, and a unique heritage site that was added to The UNESCO World Heritage List in 1979. The street has borne many names over the centuries, and came to be known as al-Mu’izz only in 1937.",
        'https://goo.gl/maps/AYeAKpp7xGPe3Vg86',
        "Cairo Egypt"),
    CityModel(
        "Coptic Muesum",
        "https://img.youm7.com/large/smal1220101616531.jpg",
        "3 Mari Gerges, Kom Ghorab, Old Cairo, Cairo Governorate",
        "The Coptic Museum houses the largest collection of Coptic artifacts in the world and was inaugurated in 1910. The museum was established through the efforts of Marcus Simaika Pasha, a prominent Coptic figure who was vested in the preservation of Coptic heritage. Simaika Pasha bought and collected Coptic antiquities and various architectural elements from older churches that were undergoing renovation, and used them to built the museum and establish its collection.",
        'https://goo.gl/maps/zkH9qPc77keRvLCx7',
        "Cairo Egypt"),
    CityModel(
        "Grand Egyption Museum",
        "https://d1b3667xvzs6rz.cloudfront.net/2021/10/bg62mgvzo8n71-720x430.jpg",
        "Kafr Nassar, Al Giza Desert, Giza Governorate",
        "The Grand Egyptian Museum is the world's largest museum dedicated to a single civilization. The collection consisting of King Tut's tomb and tens of thousands of other rare and unique archaeological finds has found a new home in a museum built on the plateau of the pyramids of Giza. This highly complex and difficult-to-construct building bears the signature of BESIX and Orascom and is expected to become a centre for culture and education, encouraging enthusiasm about Egypt's hystory.",
        'https://goo.gl/maps/sP5v9Hj3xA1erqS69',
        "Giza Egypt"),
    CityModel(
        "The Hanging Church",
        "https://www.egypttoursportal.com/images/2018/10/The-Construction-of-Hanging-Church-Egypt-Tours-Portal.jpg",
        "Kom Ghorab, Old Cairo, Cairo Governorate",
        "Take the steps that lead to one of the most beautiful churches in the Middle East known as the Hanging Church. Built on top of the Roman fortress gatehouse called Babylon, the nave of the Hanging Church is suspended over the passageway. Located just south of the Coptic Museum in Cairo, the Hanging Church boasts 13 magnificent pillars in its interior, representing Jesus and his 12 apostles. Listen in on the ancient liturgical Coptic language used in service and witness a living vestige of Ancient Egyptian history.",
        'https://goo.gl/maps/iD2cHmTNzvNur8tQ8',
        "Cairo Egypt"),
    CityModel(
        "Giza Zoo",
        "http://photos.wikimapia.org/p/00/00/58/51/80_big.jpg",
        "Giza District, Giza Governorate",
        "Khedive Ismail (1863-1879), the ruler of Egypt, was the first to think of opening the Zoo on the occasion of the inauguration of the Suez Canal in 1869 but he could not do so for the lack of enough time.  On March 1, 1891, the Zoo at Giza was opened for the public.It was first established to be a botanical garden, with various imported rare species of the most beautiful plants and cactus all over the world.Its area is about 80 acres. It is located near the west bank of the Nile. Its northern tip overlooks Cairo University. It has five gates at each direction. The Zoo is under the supervision of the Ministry of Agriculture in Egypt.",
        'https://goo.gl/maps/F7C4qAzCGSFkTUTq6',
        "Giza Egypt"),
    CityModel(
        "Baron Palace",
        "https://www.egypttoday.com/siteimages/Larg/71395.jpg",
        "El-Orouba, El-Montaza, Heliopolis, Cairo Governorate 11757",
        "Baron Empain's palace, with its Indian style, and its tower stands out in the desert landscape, is distinct from the rest of the city. The palace reflects the high status of its owner and marks a major milestone in the urban landscape of Heliopolis. Baron Empain's palace is the most prominent Monuments in the capital, its unique and innovative image attracting crowds of pedestrians on the road.",
        'https://goo.gl/maps/cV4hWgiWfMU41f9GA',
        "Cairo Egypt"),
  ];

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Cairo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
              ),
            ),
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
                              ),
                            ),
                            Text(
                              loactions[index].city,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
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
      debugShowCheckedModeBanner: false,
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
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                      child: Image.network(model.imageUrl,))
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.teal,
                    ),
                    Text(
                      model.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.city,
                        style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Divider(
                      color: Colors.teal,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.description,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Divider(
                      color: Colors.teal,
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.address,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Divider(
                      color: Colors.teal,
                    ),
                    Text('Location:'),
                    Center(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          _launchURL();
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.teal,
                        ),
                        icon: Icon(Icons.airplanemode_on, size: 18),
                        label: Text("Open in Google Maps"),
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
