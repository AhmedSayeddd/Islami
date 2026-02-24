import 'package:flutter/material.dart';

class RadioTap extends StatefulWidget {
  const RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  final List<String> _radios = [
    'Radio Ibrahim Al-Akdar',
    'Radio Al-Qaria Yassen',
    'Radio Ahmed Al-trabulsi',
    'Radio Addokali Mohammad Alalim',
    'Radio Al-Husary',
  ];

  late List<bool> _isPlaying;
  late List<bool> _isMuted;

  @override
  void initState() {
    super.initState();
    _isPlaying = List<bool>.filled(_radios.length, false);
    _isMuted = List<bool>.filled(_radios.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Background (3).png'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 12),
        itemCount: _radios.length,
        itemBuilder: (context, index) {
          final title = _radios[index];
          final playing = _isPlaying[index];
          

          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  setState(() {
                    _isPlaying[index] = !_isPlaying[index];
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDCEA1),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 36,
                            onPressed: () {
                              setState(() {
                                _isPlaying[index] = !_isPlaying[index];
                              });
                            },
                            icon: Image.asset(
                              playing
                                  ? 'assets/images/Pause.png'
                                  : 'assets/images/Polygon 2.png',
                            ),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isMuted[index] = !_isMuted[index];
                              });
                            },
                            child: Image.asset(
                              _isMuted[index]
                                  ? 'assets/images/Volume Cross.png'
                                  : 'assets/images/Volume High.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
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
