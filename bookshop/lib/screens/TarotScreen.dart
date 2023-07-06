import 'package:flutter/material.dart';
import 'dart:math';
class TarotScreen extends StatefulWidget {
  @override
  _TarotScreenState createState() => _TarotScreenState();
}

class _TarotScreenState extends State<TarotScreen> {
  List<String> tarotCards = [
    'Küçük Arkana: Asa',
    'Küçük Arkana: Kupa',
    'Küçük Arkana: Kılıç',
    'Küçük Arkana: Pentagram',
    'Büyük Arkana: Ahlak',
    'Büyük Arkana: İmparatoriçe',
    'Büyük Arkana: İmparator',
    'Büyük Arkana: Papaz',
    'Büyük Arkana: Aşıklar',
    'Büyük Arkana: Araba',
    'Büyük Arkana: Adalet',
    'Büyük Arkana: Asa',
    'Büyük Arkana: Akıl',
    'Büyük Arkana: Şeytan',
    'Büyük Arkana: Kule',
    'Büyük Arkana: Yıldız',
    'Büyük Arkana: Ay',
    'Büyük Arkana: Güneş',
    'Büyük Arkana: Adalet',
    'Büyük Arkana: Kainat'
  ];

  String selectedCard = '';
  bool showResult = false;
  String resultText = '';

  void _shuffleCards() {
    setState(() {
      tarotCards.shuffle();
      selectedCard = tarotCards.first;
      showResult = false;
    });
  }

  void _showResult() {
    setState(() {
      showResult = true;
      // Burada kartın anlamına göre fal sonucunu belirleyebilirsiniz
      resultText = 'İyi bir döneme giriyorsunuz!';
    });
  }

  void _selectCard(String card) {
    setState(() {
      selectedCard = card;
      showResult = false;
    });
  }

  void _reset() {
    setState(() {
      _shuffleCards();
      resultText = '';
    });
  }

  @override
  void initState() {
    super.initState();
    _shuffleCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      
      body:
      
      
       Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("İris App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            Text(
              'Seçilen Kart:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              selectedCard,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(61, 5, 104,0)),
              child: Text(
                'Kartı Karıştır',
                style:TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
                
              ),
              onPressed: _reset,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(61, 5, 104,0)),
              child: Text(
                'Fal Sonucunu Göster',
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
              ),
              onPressed: _showResult,
            ),
            SizedBox(height: 40),
            Visibility(
              visible: showResult,
              child: Text(
                resultText,
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            TarotCardSelector(
              tarotCards: tarotCards,
              selectedCard: selectedCard,
              onSelect: _selectCard,
            ),
          ],
        ),
      ),
    );
  }
}

class TarotCardSelector extends StatelessWidget {
  final List<String> tarotCards;
  final String selectedCard;
  final Function(String) onSelect;

  TarotCardSelector({
    required this.tarotCards,
    required this.selectedCard,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tarotCards.length,
        itemBuilder: (BuildContext context, int index) {
          final card = tarotCards[index];
          final isSelected = card == selectedCard;
          return GestureDetector(
            onTap: () {
              onSelect(card);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected ? Colors.deepPurple : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? Colors.deepPurple : Colors.grey,
                  width: 2,
                ),
              ),
              child: Center(
                child: Visibility(
                  visible: isSelected,
                  child: Text(
                    card,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}