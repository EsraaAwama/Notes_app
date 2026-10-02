import 'package:flutter/material.dart';

class nodeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: .circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,//.............
          children: [
            ListTile(
              title: Text('Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
              ),
              subtitle:Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Builder your career with esraa',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 18,
                ),
                ),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 24,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May21, 2026',
                style: TextStyle(
                 color: Colors.black.withValues(alpha: 0.5),
                 fontSize: 16,
                      
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
