import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class ChatBubbleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BubbleSpecialThree(
            text: 'Added iMessage shape bubbles',
            color: Color(0xFF1B97F3),
            tail: false,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'Please try and give some feedback on it!',
            color: Color(0xFF1B97F3),
            tail: true,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'Sure',
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "I tried. It's awesome!!!",
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "Thanks",
            color: Color(0xFFE8E8EE),
            tail: true,
            isSender: false,
          ),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Main Bubble
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  constraints: BoxConstraints(maxWidth: 300),
                  decoration: BoxDecoration(
                    color: Color(0xfff8f3e9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hola! Nos interesa tu perfil, ¿estás disponible para una llamada?",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "7:03 PM",
                          style: TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                ),

                // Tail
                // Tail
                Positioned(
                  bottom: -2, // thoda neeche overlap kare
                  left: -16, // bubble ke bilkul left se bahar
                  child: CustomPaint(
                    painter: BubbleTailPainter(color: Color(0xfff8f3e9)),
                    size: Size(24, 20), // bigger size
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BubbleTailPainter extends CustomPainter {
  final Color color;
  BubbleTailPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(
      0,
      size.height / 2, // control point
      size.width,
      size.height,
    );
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
