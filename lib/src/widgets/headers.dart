import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}


class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderDiagonalPainter(),  
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint =  Paint();
   
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

    //Dibujar con el path y lapiz
    final path = Path();
    path.moveTo( 0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.28);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.35);

     //aplicamos los dibujado
     canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderTriangularPainter(),  
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

  
    //Dibuajar con path y lapis
    final path = Path();
    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0); //este no es necesario

        //Dibuajar con path y lapis triangulo invertido
    // final path = Path();
    // // path.lineTo(0, 0); //este no es necesario
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // // path.lineTo(0, 0); //este no es necesario

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderPicoPainter(),  
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

  
    //Dibuajar con path y lapis
    final path = Path();
    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.28);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
  

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


//curva )
class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderCurvoPainter(),  
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 25;

  
    //Dibuajar con path y lapis
    final path = Path();
    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(0, size.height * 0.25);
    //realizar curva
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.35, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
  

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

//Curva invertido (
class HeaderCurvoInvertido extends StatelessWidget {
  const HeaderCurvoInvertido({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderCurvoInvertidoPainter(),  
      ),
    );
  }
}

class _HeaderCurvoInvertidoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 25;

  
    //Dibuajar con path y lapis
    final path = Path();
    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(0, size.height * 0.25);
    //realizar curva
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.15, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
  

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

// cursa waves ~
class HeaderCurvoWaves extends StatelessWidget {
  const HeaderCurvoWaves({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderCurvoWavesPainter(),  
      ),
    );
  }
}

class _HeaderCurvoWavesPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;

  
    //Dibuajar con path y lapis
    final path = Path();
    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(0, size.height * 0.25);

    //realizar media curva 
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);

    //realizar media curva invertida
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);

     path.lineTo(size.width, 0);
  

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

// cursa waves invertido ~
class HeaderCurvoWavesInvertido extends StatelessWidget {
  const HeaderCurvoWavesInvertido({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
       painter: _HeaderCurvoWavesInvertidoPainter(),  
      ),
    );
  }
}

class _HeaderCurvoWavesInvertidoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    //propiedades
    final paint = Paint();
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

  
    //Dibuajar con path y lapis
    final path = Path();
   path.moveTo(0, size.height );

    // path.lineTo(0, 0); //este no es necesario
    path.lineTo(0, size.height * 0.25);

    //realizar media curva 
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);

    //realizar media curva invertida
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);

     path.lineTo(size.width, size.height);
  

    //aplicamos lo dibujado
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}




