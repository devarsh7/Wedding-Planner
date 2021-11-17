class Venues {
  String name;
  String type;
  String url;
  Venues({required this.name, required this.type, required this.url});
}

List<Venues> items = [
  Venues(
      name: "Garden Wedding Venues",
      type: "",
      url:
          "https://images.jdmagicbox.com/comp/ahmedabad/b1/079pxx79.xx79.190303140011.l8b1/catalogue/sizzling-pizza-maninagar-ahmedabad-pizza-outlets-24pduifh8i.jpg?clr=#333333"),
  Venues(
      name: "Beach Wedding Venues",
      type: "",
      url:
          "https://i0.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Prainha-Resort-by-the-Sea-Wedding-Venue-India.jpg?w=1000&ssl=1"),
  Venues(
      name: "Seaview & Sunset Wedding Venues",
      type: "",
      url:
          "https://platedcravings.com/wp-content/uploads/2020/01/Air-Fryer-Frozen-Fries-Plated-Cravings-8.jpg"),
  Venues(
      name: "Hotel Wedding Venues",
      type: "",
      url:
          "https://i1.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Fairmont-Jaipur-India-Wedding-Venues.jpg?w=1000&ssl=1"),
  Venues(
      name: "Restaurant Wedding Venues",
      type: "",
      url:
          "https://i0.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Bukhara-Restaurant-Wedding-Venue-India.jpg?w=1000&ssl=1"),
  Venues(
      name: "Unique Wedding Venues",
      type: "",
      url:
          "https://i0.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Suryagarh-India-Wedding-Venues.jpg?resize=1200%2C800&ssl=1"),
  Venues(
      name: "Skyline Wedding Venues",
      type: "",
      url:
          "https://i0.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Nemraha-Fort-Palace-Wedding-Venue-India.jpg?w=960&ssl=1"),
  Venues(
      name: "Chapel Wedding Venues",
      type: "",
      url:
          "https://i0.wp.com/www.theweddingvowsg.com/wp-content/uploads/2020/04/Basillica-Bom-Jesus-Wedding-Venues-India-1.jpg?w=1000&ssl=1"),
];

class Gdw {
  String name;
  String details;
  String url;
  String capacity;
  Gdw(
      {required this.name,
      required this.details,
      required this.capacity,
      required this.url});
}

List<Gdw> info = [
  Gdw(
      name: "Rambagh Palace",
      details: "",
      capacity: "Capacity: 400-500",
      url:
          "https://www.tajhotels.com/content/dam/luxury/rambagh-palace/3x2/Maharani-Mahal-Pic.JPG/jcr:content/renditions/cq5dam.web.756.756.jpeg"),
  Gdw(
      name: "The Zuri Hotel",
      details: "",
      capacity: "Capacity: 480-600",
      url:
          "https://www.thezurihotels.com/wp-content/uploads/2019/07/Lifestyle-Boating-J-3-520x346.jpg"),
  /*Gdw(
      name: "The Leela",
      details: "",
      capacity: "Capacity: 200-350",
      url: "http://www.rajpalace.com/images/shahi-mahal.jpg"),
  Gdw(
      name: "Raj Palace",
      details: "",
      capacity: "Capacity: 410-500",
      url: "http://www.rajpalace.com/images/shahi-mahal.jpg"),*/
];

class Photography {
  String name;
  String type;
  String url;
  Photography({required this.name, required this.type, required this.url});
}

List<Photography> pitems = [
  Photography(
      name: "Weddingraphy",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/75e6c99d-8d43-9c82-a251-ca4b6403c370.jpg"),
  Photography(
      name: "Wedding Diaries",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/eb7f4152-fb5d-1e57-cca0-e284fd632155.jpg"),
  /*Photography(
      name: "Paran Singh Photography",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/bf23a807-91be-4e33-9ca0-83b8bd51984f.png"),
  Photography(
      name: "The Wedding Story",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/2e5d229a-5f48-4de4-9112-5b803026015a.png"),
  Photography(
      name: "White Frog Productions",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/0d110599-7e3a-47a1-8cbc-17ca26a3c72c.png"),
  Photography(
      name: "Pixbricks",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/87f28f55-ea47-43bc-8838-64532455d65a.png"),
  Photography(
      name: "Weddings by Knotty Days",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/704ccf15-c434-4943-a9a1-6372f532fbc4.png"),
  Photography(
      name: "Dot Dusk Studio",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/1d4ec298-9b74-4011-84ac-6a54220bd980.png"),*/
];

class Cart {
  String name;
  String type;
  String url;
  Cart({required this.name, required this.type, required this.url});
}

List<Cart> citems = [
  Cart(
      name: "The Zuri Hotel",
      type: "",
      url:
          "https://www.thezurihotels.com/wp-content/uploads/2019/07/Lifestyle-Boating-J-3-520x346.jpg"),
  Cart(
      name: "Wedding Diaries",
      type: "",
      url:
          "https://s3-us-west-2.amazonaws.com/shaadiwishnewbucket/eb7f4152-fb5d-1e57-cca0-e284fd632155.jpg"),
];

class Makeups {
  String name;
  String type;
  String url;
  Makeups({required this.name, required this.type, required this.url});
}

List<Makeups> mitems = [
  Makeups(
      name: "Make-up Man",
      type: "",
      url:
          "https://cdn.britannica.com/35/222035-131-9FC95B31/makeup-cosmetics.jpg"),
  Makeups(
      name: "Swara's Makeup",
      type: "",
      url:
          "https://media.istockphoto.com/photos/makeup-artist-applies-eye-shadow-picture-id952087564?k=20&m=952087564&s=612x612&w=0&h=8tG3vsImxLXUa7nOa2mthY8vCX46xyhd70l2Snsbt8I="),
];
