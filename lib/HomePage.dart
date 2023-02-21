import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:informative_app/Screens/ComingSoon.dart';
import 'package:informative_app/Screens/DelhiTourPlaces.dart';
import 'package:informative_app/Screens/LoginPage.dart';
import 'package:informative_app/Screens/SecondPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'NextPageModelClass/NextPageModelClass.dart';

class HomePage extends StatefulWidget {
  static List<String> city = [
    'Explore the City',
    "Unexplored Delhi",
    "Stay in Delhi",
    "Entertainment & Fun",
    "Delhi for Kids",
    "Delhi Delicious",
    "Food Tours"
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> descp = [
    """The Qutub Minar was built over the ruins of the Lal Kot, the citadel of Dhillika.[7] Qutub Minar was begun after the Quwwat-ul-Islam Mosque, which was started around 1192 by Qutb-ud-din Aibak, first ruler of the Delhi Sultanate.[14]
  Kuttull Minor, Delhi. The Qutb Minar, 1805.It is usually thought that the tower is named for Qutb-ud-din Aibak, who began it. It is also possible that it is named after Khwaja Qutbuddin Bakhtiar Kaki a 13th-century sufi saint, because Shamsuddin Iltutmish was a devotee of his.[15]
  The Minar is surrounded by several historically significant monuments of the Qutb complex. Quwwat-ul-Islam Mosque, to the north-east of the Minar was built by Qutub-ud-Din Aibak in A.D. 1198. It is the earliest extant - mosque built by the Delhi Sultans. It consists of a rectangular courtyard enclosed by cloisters, erected with the carved columns and architectural members of 27 Jain and Hindu temples, which were demolished by Qutub-ud-Din Aibak as recorded in his inscription on the main eastern entrance.[16] Later, a lofty arched screen was erected, and the mosque was enlarged, by Shams-ud- Din Itutmish (A.D. 1210-35) and Ala-ud-Din Khalji. The Iron Pillar in the courtyard bears an inscription in Sanskrit in Brahmi script of fourth century A.D., according to which the pillar was set up as a Vishnudhvaja (standard of god Vishnu) on the hill known as Vishnupada in memory of a mighty king named Chandra.[16]
  The mosque complex is one of the earliest that survives in the Indian subcontinent.[6][7]
  The nearby pillared cupola known as "Smith's Folly" is a remnant of the tower's 19th century restoration, which included an ill-advised attempt to add some more stories.[17][18]
  In 1505, an earthquake damaged Qutub Minar; it was repaired by Sikander Lodi. On 1 September 1803, a major earthquake caused serious damage. Major Robert Smith of the British Indian Army renovated the tower in 1828 and installed a pillared cupola over the fifth story, creating a sixth. The cupola was taken down in 1848, under instructions from The Viscount Hardinge, who was the Governor General of India. at the time. It was reinstalled at ground level to the east of Qutb Minar, where it remains. This is known as "Smith's Folly".[19]
  It was added to the list of World Heritage Site by UNESCO in 1993.""",
    """ The India Gate (formerly known as the All India War Memorial) is a war memorial located near the Kartavya path on the eastern edge of the "ceremonial axis" of New Delhi, formerly called duty path. It stands as a memorial to 84,000 soldiers of the British Indian Army who died between 1914 and 1921 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the Third Anglo-Afghan War. 13,300 servicemen's names, including some soldiers and officers from the United Kingdom, are inscribed on the gate.[2] Designed by Sir Edwin Lutyens, the gate evokes the architectural style of the memorial arch such as the Arch of Constantine, in Rome, and is often compared to the Arc de Triomphe in Paris, and the Gateway of India in Mumbai.
Following the Bangladesh Liberation war in 1972, a structure consisting of a black marble plinth with a reversed rifle, capped by a war helmet and bounded by four eternal flames, was built beneath the archway. This structure, called Amar Jawan Jyoti (Flame of the Immortal Soldier), has since 1971 served as India's tomb of the unknown soldier. India Gate is counted amongst the largest war memorials in India and every Republic Day, the Prime Minister visits the gate to pay their tributes to the Amar Jawan Jyoti, following which the Republic Day parade starts. India Gate is often a location for civil society protests.Armoured cars passing through the gate, in the 1930s
The India Gate was part of the work of the Imperial War Graves Commission (IWGC), which came into existence in December 1918 under the British rule for building war graves and memorials to soldiers who were killed in the First World War.[3] The foundation stone of the gate then called the All India War Memorial, was laid on 10 February 1921, at 16:30, by the visiting Duke of Connaught in a ceremony attended by officers and men of the British Indian Army, Imperial Service Troops, the commander in chief, and Chelmsford, the viceroy.[4] On the occasion, the viceroy is reported to have said, "The stirring tales of individual heroism, will live forever in the annals of this country", and that the memorial which was a tribute to the memory of heroes, "known and unknown", would inspire future generations to endure hardships with similar fortitude and "no less valor".[4] The Duke also read out a message by the King, which said, "On this spot, in the central vista of the Capital of India, there will stand a Memorial Archway, designed to keep", in the thoughts of future generations, "the glorious sacrifice of the officers and men of the British Indian Army who fought and fell". During the ceremony, the Deccan Horse, 3rd Sappers and Miners, 6th Jat Light Infantry, 34th Sikh Pioneers, 39th Garhwal Rifles, 59th Scinde Rifles (Frontier Force), 117th Mahrattas, and 5th Gurkha Rifles
Ten years after the foundation stone's laying on 12 February 1931, the memorial was inaugurated by Lord Irwin, who, on the occasion, said "those who after us shall look upon this monument may learn in pondering its purpose something of that sacrifice and service which the names upon its walls record."[5] In the decade between the laying of foundation stone of the memorial and its inauguration, the rail-line was shifted to run along the Yamuna River, and the New Delhi Railway Station was opened in 1926.[6]
The gate, which is illuminated every evening from 19:00 to 21:30, today serves as one of Delhi's most important tourist attractions. Cars used to travel through the gate until it was closed to traffic.[citation needed] The Republic Day Parade starts from Rashtrapati Bhavan and passes around the India Gate.[citation needed] India gate is often a location for civil society protests, including demonstrations in response to the Nirbhaya rape case in 2012 and the Unnao rape case in 2017, and as part of the 2011 anti-corruption movement.[7][8][9]
In 2017, the India Gate was twinned with the Arch of Remembrance in Leicester, England,[further explanation needed] another Lutyens war memorial, following a very similar design but on a smaller scale. In a ceremony, India's high commissioner to the United Kingdom laid a wreath at the arch in Leicester and the British high commissioner to India laid one at the India Gate.[10]""",
    """ The architect of the Lotus Temple was an Iranian, Fariborz Sahba who now lives in La Jolla, California,[6] after living some years in Canada.[7] He was approached in 1976 to design the Lotus Temple and later oversaw its construction. The structural design was undertaken by the UK firm Flint and Neill over the course of 18 months,[8] and the construction was done by ECC Construction Group of Larsen & Toubro Limited[9][dead link] at a cost of 10 million.[10][11] The major part of the funds needed to buy this land was donated by Ardishír Rustampúr of Hyderabad, Sindh (Pakistan), whose will dictated that his entire life savings would go to this purpose.[12][page needed] A portion of the construction budget was saved and used to build a greenhouse to study indigenous plants and flowers that would be appropriate for use on the site.[13]
Rúhíyyih Khánum laid the foundation stone for the Lotus Temple on 19 October 1977 and dedicated the temple on 24 December 1986.[14] For the dedication, there was a gathering of 8,000 Baháʼís from 107 countries, including some 4,000 Baháʼís from 22 provinces in India. The temple was opened to the public on 1 January 1987 and more than 10,000 people visited that day.[15]
Worship The Baháʼí Faith teaches that a Baháʼí House of Worship should be a space for people of all religions to gather, reflect, and worship.[16] Anyone may enter the Lotus Temple irrespective of religious background, gender, or other distinctions, as is the case with all Baháʼí Houses of Worship.[16] The sacred writings of not only the Baháʼí Faith but also other religions can be read and/or chanted, regardless of language;[16] on the other hand, reading nonscriptural texts is forbidden, as are delivering sermons or lectures, or fundraising. Musical renditions of readings and prayers can be sung by choirs, but no musical instruments can be played inside. There is no set pattern for worship services, and ritualistic ceremonies are not permitted.[16] Interior view of the symbol of the Greatest Name, set at the top of the temple
All Baháʼí Houses of Worship, including the Lotus Temple, share certain architectural elements, some of which are specified by Baháʼí scripture. ʻAbdu'l-Bahá, the son of the founder of the religion, wrote that Baháʼí Houses of Worship must be nine-sided and circular.[16] While all current Baháʼí Houses of Worship have a dome, this is not regarded as an essential part of their architecture.[14] Baháʼí scripture also states that no pictures, statues or images be displayed within the House of Worship and no pulpits or altars be incorporated as an architectural feature (readers may stand behind simple portable lecture stands).[16]
Inspired by the lotus flower, the design for the House of Worship in New Delhi is composed of 27 free-standing marble-clad "petals" arranged in clusters of three to form nine sides.[17] The temple's shape has symbolic and inter-religious significance because the lotus is often associated with purity, sacredness, spirituality and knowledge. It has a spiritual significance in India.[3] The nine doors of the Lotus Temple open onto a central hall 34.3 meters tall[1] that can seat 1,300 people[18] and hold up to 2,500 in all.[2] The temple has a diameter of 70 m.[19] The surface of the House of Worship is made of white marble from Penteli mountain in Greece, the same marble used in the construction of many ancient monuments (including the Parthenon[18]) and other Baháʼí buildings.[20] Along with its nine surrounding ponds and gardens, the Lotus Temple property comprises 26 acres (105,000 m²; 10.5 ha).[4] An educational centre beside the temple was established in 2017.[21]
The Lotus Temple is situated near Okhla NSIC and Kalkaji Mandir metro station is just 500 meters away.[citation needed] It is in the village of Bahapur in New Delhi, National Capital Territory of Delhi, near Nehru Place.[22]
Of the temple's total electricity use of 500 kilowatts (kW), 120 kW is provided by solar power generated by solar panels on the building.[23] This saves the temple ₹120,000 per month.[23] It is the first temple in Delhi to use solar power.[24]
As is the case with other stone monuments such as the Taj Mahal, the Lotus Temple is becoming discoloured due to air pollution in India. Specifically, the white marble is turning grey and yellow due to pollution from vehicles and manufacturing in the city, among other sources.[25]""",
    """ The Red Fort or Lal Qila (Hindustani: [laːlqiːlaː]) is a historic fort in Old Delhi, Delhi in India that served as the main residence of the Mughal Emperors. Emperor Shah Jahan commissioned construction of the Red Fort on 12 May 1638, when he decided to shift his capital from Agra to Delhi. Originally red and white, its design is credited to architect Ustad Ahmad Lahori, who also constructed the Taj Mahal. The fort represents the peak in Mughal architecture under Shah Jahan and combines Persianate palace architecture with Indian traditions.
The fort was plundered of its artwork and jewels during Nader Shah's invasion of the Mughal Empire in 1739. Most of the fort's marble structures were subsequently demolished by the British following the Indian Rebellion of 1857. The fort's defensive walls were largely undamaged, and the fortress was subsequently used as a garrison.
On 15 August 1947, the first prime minister of India, Jawaharlal Nehru, raised the Indian flag above the Lahori Gate. Every year on India's Independence Day (15 August), the prime minister hoists the Indian tricolour flag at the fort's main gate and delivers a nationally broadcast speech from its ramparts.
The Red Fort was designated a UNESCO World Heritage Site in 2007 as part of the Red Fort Complex.
The name Red Fort is a translation of the Hindustani Lāl Qila (Hindi: लाल क़िला, Urdu: لال قلعہ)deriving from its red sandstone walls. Lal was derived from Hindustani language meaning "Red" and Qalàh derived from Arabic word meaning "Fortress". As the residence of the imperial family, the fort was originally known as the "Blessed Fort" (Qila-i-Mubārak).[5][6] Agra Fort is also known as Lāl Qila.
Mughal Emperor Shah Jahan, c. 1630
Emperor Shah Jahan commissioned construction of the Red Fort on 12 May 1638, when he decided to shift his capital from Agra to Delhi. Originally red and white, Shah Jahan's favourite colours,[7] its design is credited to architect Ustad Ahmad Lahori, who also constructed the Taj Mahal.[8][9] The fort lies along the Yamuna River, which fed the moats surrounding most of the walls.[10] Construction began in the sacred Islamic month of Muharram, on 13 May 1638. Supervised by Shah Jahan, it was completed on 6 April 1648.[12][13][14] Unlike other Mughal forts, the Red Fort's boundary walls are asymmetrical to contain the older Salimgarh Fort.[11]: 04  The fortress-palace was a focal point of the city of Shahjahanabad, which is present-day Old Delhi. Shah Jahan's successor, Aurangzeb, added the Moti Masjid (Pearl Mosque) to the emperor's private quarters, constructing barbicans in front of the two main gates to make the entrance to the palace more circuitous.[11]: 08
Image shows Red Fort's long walls including the gates as seen from Jama Masjid's tower. The walls can be seen in the background extending a couple of thousand meters.
The walls of Red Fort (in the background) as seen from the top of Jama Masjid's tower
The administrative and fiscal structure of the Mughal dynasty declined after Aurangzeb, and the 18th century saw a degeneration of the palace. In 1712 Jahandar Shah became the Mughal Emperor. Within a year of beginning his rule, Shah was murdered and replaced by Farrukhsiyar. In 1739, Persian emperor Nadir Shah easily defeated the strong Mughal army of around 200,000 soldiers,[15] plundering the Red Fort, including the Peacock Throne. Nadir Shah returned to Persia after three months, leaving a destroyed city and a weakened Mughal empire to Muhammad Shah.[11]: 09  The internal weakness of the Mughal Empire made the Mughals only titular rulers of Delhi, and a 1752 treaty made the Marathas protectors of the throne at Delhi.[16][17] The 1758 Maratha victory at Sirhind aided by the Sikhs and successive defeat at Panipat[18] placed them in further conflict with Ahmad Shah Durrani.[19][20]
In 1760, the Marathas removed and melted the silver ceiling of the Diwan-i-Khas to raise funds for the defence of Delhi from the armies of Ahmed Shah Durrani.[21][22] In 1761, after the Marathas lost the third battle of Panipat, Delhi was raided by Ahmed Shah Durrani. Ten years later, the Marathas, acting on the behest and as mercenary of the exiled Emperor Shah Alam, recaptured Delhi from the Rohilla Afghans. Mahadji Scindia, the commander of Maratha army bowed to Mughal Emperor Shah Alam to demonstrate his submission to him.[23] Thus, Shah Alam was restored to the throne.
In 1764, the Jat ruler of Bharatpur, Maharaja Jawahar Singh (the son of Maharaja Suraj Mal) attacked Delhi and captured the Red Fort of Delhi on 5 February 1765.[24] Two days later, after taking tribute from the Mughals, removed their armies from the fort and the Jats took away the throne of the Mughals, called the pride of the Mughals, and the doors of the Red Fort as a memorial, and this throne is today enhancing the beauty of the palaces of Deeg. The doors are located in the Lohagarh Fort of Bharatpur.[25]""",
    """ Humayun’s Tomb, Delhi is the first of the grand dynastic mausoleums that were to become synonyms of Mughal architecture with the architectural style reaching its zenith 80 years later at the later Taj Mahal. Humayun’s Tomb stands within a complex of 27.04 ha. that includes other contemporary, 16th century Mughal garden-tombs such as Nila Gumbad, Isa Khan, Bu Halima, Afsarwala, Barber’s Tomb and the complex where the craftsmen employed for the Building of Humayun’s Tomb stayed, the Arab Serai.

Humayun’s Tomb was built in the 1560’s, with the patronage of Humayun’s son, the great Emperor Akbar. Persian and Indian craftsmen worked together to build the garden-tomb, far grander than any tomb built before in the Islamic world. Humayun’s garden-tomb is an example of the charbagh (a four quadrant garden with the four rivers of Quranic paradise represented), with pools joined by channels. The garden is entered from lofty gateways on the south and from the west with pavilions located in the centre of the eastern and northern walls.

The mausoleum itself stands on a high, wide terraced platform with two bay deep vaulted cells on all four sides. It has an irregular octagon plan with four long sides and chamfered edges. It is surmounted by a 42.5 m high double dome clad with marble flanked by pillared kiosks (chhatris) and the domes of the central chhatris are adorned with glazed ceramic tiles. The middle of each side is deeply recessed by large arched vaults with a series of smaller ones set into the facade.

The interior is a large octagonal chamber with vaulted roof compartments interconnected by galleries or corridors. This octagonal plan is repeated on the second storey. The structure is of dressed stone clad in red sandstone with white and black inlaid marble borders.

Humayun’s garden-tomb is also called the ‘dormitory of the Mughals’ as in the cells are buried over 150 Mughal family members.

The tomb stands in an extremely significant archaeological setting, centred at the Shrine of the 14th century Sufi Saint, Hazrat Nizamuddin Auliya. Since it is considered auspicious to be buried near a saint’s grave, seven centuries of tomb building has led to the area becoming the densest ensemble of medieval Islamic buildings in India.

Criteria (ii): Humayun’s garden-tomb is built on a monumental scale, grandeur of design and garden setting with no precedence in the Islamic world for a mausoleum. Here for the first time, important architectural innovations were made including creating a char-bagh – a garden setting inspired by the description of paradise in the Holy Quran. The monumental scale achieved here was to become the characteristic of Mughal imperial projects, culminating in the construction of the Taj Mahal.

Criteria (iv): Humayun’s Tomb and the other contemporary 16th century garden tombs within the property form a unique ensemble of Mughal era garden-tombs. The monumental scale, architectural treatment and garden setting are outstanding in Islamic garden-tombs. Humayun’s Tomb is the first important example in India, and above all else, the symbol of the powerful Mughal dynasty that unified most of the sub continent.

Integrity

The inscribed property includes the Humayun’s tomb enclosure, which comprises the gateways, pavilions and attached structures pre-dating Humayun’s Tomb, such as the Barber’s Tomb, Nila Gumbad and its garden setting, Isa Khan’s garden tomb and other contemporary 16th century structures such as Bu Halima’s garden-tomb and Afsarwala garden-Tomb. All of these attributes fully convey the outstanding universal value of the property. The tomb’s in the complex have been respected throughout their history and so have retained original form and purpose intact. Recent conservation works, that have followed the urban landscape approach, have been aimed at preserving this character and ensured the preservation of the physical fabric, enhancing the significance while reviving living building craft traditions used by the Mughal builders.

Authenticity

The authenticity of the Humayun’s Tomb lies in the mausoleum, other structures and the garden retaining its original form and design, materials and setting.

The tomb and its surrounding structures are substantially in their original state and interventions have been minimal and of high quality. Conservation works being carried out on the structures are focused on using traditional materials such as lime mortar, building tools and techniques to recover authenticity especially by removal of 20th century materials such as the concrete layers from the roof and replacement by lime-concrete, removal of cement plaster from the lower cells and replacement with lime mortar in original patterns and concrete removal from the lower platform to reveal and reset the original stone paving, among other similar efforts. A similar conservation approach is being used on all garden-tombs in the complex."""
  ];

  List<String> img = [
    'https://cdn.pixabay.com/photo/2017/03/19/08/01/qutub-minar-2155776_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/02/02/17/24/travel-4813658_1280.jpg',
    'https://images.unsplash.com/photo-1607960346367-8ef3b7a108e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
        'https://images.unsplash.com/photo-1637301625903-e25a30ba1bb5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80',
    'https://plus.unsplash.com/premium_photo-1661919589683-f11880119fb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1620563202699-5661aefec7ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
  ];

  List<String> tour = [
    'Qutub Minar',
    'India Gate',
    'Lotus Temple',
    'Red Fort',
    'Humayun\'s Tomb'
  ];

  List<String> place = [
    'Mehrauli',
    'Kartavya Path',
    'Bahapur',
    'Chandni Chowk',
    'Lodhi Road'
  ];

  List<String> cityImg = [
    'https://images.unsplash.com/photo-1513014576558-921f00d80b77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=859&q=80',
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Adam_Khan%27s_Tomb_1.jpg/1280px-Adam_Khan%27s_Tomb_1.jpg",
    "https://www.visittnt.com/images/delhi/taj-palace-hotel-delhi.jpg",
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2020/04/Worlds-Of-Wonder_7th-Apr.jpg",
    "https://i.ytimg.com/vi/MxvEM1H8Q-A/maxresdefault.jpg",
    "https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141353.jpg?w=2000",
    "https://thumbor.bigedition.com/margherita-pizza/P-g2nWhdYaM5aEF6i5DHjxJ2lvM=/800x0/filters:quality(80)/granite-web-prod/79/e5/79e546519bde42739dcd616c9f13d138.jpeg"
  ];

  int currentIndex = 0;

  final List<NextPageModelClass> nextpageModelCLass = List.generate(
      HomePage.city.length,
      (index) => NextPageModelClass(title: HomePage.city[index]));

  Future<dynamic> logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('email');
    Navigator.push(context as BuildContext,
        MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              activeColor: Colors.lightBlue,
              color: Colors.red[100],
              duration: Duration(milliseconds: 400),
              curve: Curves.easeIn,
              onTabChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              gap: 10,
              iconSize: 24,
              padding: const EdgeInsets.all(20),
              tabBackgroundColor: Colors.lightBlue.shade100,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: "Saved",
                ),
                GButton(
                  icon: Icons.search_outlined,
                  text: "Search",
                ),
                GButton(
                  icon: Icons.people_alt_outlined,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ),
        // backgroundColor: Color(0xffE3EEFA),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.lightBlue),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Our Delhi",
            style: GoogleFonts.gabriela(color: Colors.blue, fontSize: 40),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: logout,
                icon: Icon(
                  Icons.logout,
                  color: Colors.lightBlue,
                  size: 26,
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Azad Saifi",
                  style: GoogleFonts.poppins(
                      fontSize: 23, fontWeight: FontWeight.w500),
                ),
                accountEmail: Text(
                  "azadsaifi@gmail.com",
                  style: GoogleFonts.notoSansAnatolianHieroglyphs(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  minRadius: 10,
                  backgroundImage: AssetImage(
                    "assets/images/mypic.jpg",
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 19),
                ),
                leading: Icon(Icons.people),
              ),
              const Divider(color: Colors.grey, endIndent: 16, indent: 16),
              const ListTile(
                title: Text(
                  "My Saved Places",
                  style: TextStyle(fontSize: 19),
                ),
                leading: Icon(Icons.place_sharp),
              ),
              const Divider(color: Colors.grey, endIndent: 16, indent: 16),
              const ListTile(
                title: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 19),
                ),
                leading: Icon(Icons.edit_outlined),
              ),
              const Divider(color: Colors.grey, endIndent: 16, indent: 16),
              const ListTile(
                title: Text(
                  "Contact US",
                  style: TextStyle(fontSize: 19),
                ),
                leading: Icon(Icons.contacts_outlined),
              ),
              const Divider(color: Colors.grey, endIndent: 16, indent: 16),
              ListTile(
                onTap: logout,
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 19),
                ),
                leading: Icon(Icons.logout_outlined),
              ),
              const Divider(color: Colors.grey, endIndent: 16, indent: 16),
            ],
          ),
        ),
        body: currentIndex == 0
            ? SafeArea(
                child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 45,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.lightBlue,
                                        size: 27,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText:
                                          'Search Delhi Festival, Tourist Places Etc.',
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                              child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.9,
                            color: Color(0xffE3EEFA),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.tour,
                                  color: Colors.lightBlue,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Delhi Tour Places',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 120,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, i) {
                                return Row(
                                  children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return delhiTourPlaces(
                                                img: img[i],
                                                name: tour[i],
                                                descripion: descp[i],
                                              );
                                              //return PostBottomBar();
                                            }));
                                          },
                                          child: CircleAvatar(
                                            radius: 35,
                                            backgroundImage:
                                                NetworkImage("${img[i]}"),
                                          ),
                                        ),
                                        Text(
                                          "${tour[i]}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.lightBlue,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        Text('${place[i]}',
                                            style: GoogleFonts.lato(
                                                color: Colors.lightBlue[200],
                                                fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                );
                              },
                              itemCount: img.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.7,
                        color: Color(0xffE3EEFA),
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return SecondPage(
                                          ttt: nextpageModelCLass[i].title);
                                    }));
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text(
                                              "${HomePage.city[i]}",
                                              style: TextStyle(
                                                  color: Colors.lightBlue,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              20), // Image border
                                          child: SizedBox.fromSize(
                                            // Image radius
                                            child: Image.network(
                                              "${cityImg[i]}",
                                              height: 240,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 23,
                                        ),
                                        Container(
                                          height: 2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          color: Colors.deepPurple,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
                ),
              ))
            : ComingSoon());
  }
}

class alertDialog extends StatefulWidget {
  const alertDialog({Key? key}) : super(key: key);

  @override
  State<alertDialog> createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
  Future<dynamic> logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('email');
    Navigator.push(context as BuildContext,
        MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: ListBody(
        children: [
          Text("Are you sure to logout?"),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            child: Text('No')),
        TextButton(onPressed: logout, child: Text('Logout')),
      ],
    );
  }
}
