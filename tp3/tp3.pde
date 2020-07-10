PImage uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez, inicio, creditos;
String estado;
PFont Tipo;

void setup () {
  size ( 1024, 768);


  inicio = loadImage ("INICIO.png");
  uno = loadImage ("pantalla1.png");
  dos = loadImage ("pantalla2.png");
  tres = loadImage ("pantalla3.png");
  cuatro = loadImage ("pantalla4.png");
  cinco = loadImage ("pantalla5.png");
  seis = loadImage ("pantalla6.png");
  siete = loadImage ("pantalla7.png");
  ocho = loadImage ("pantalla8.png");
  nueve = loadImage ("pantalla9.png");
  diez = loadImage ("pantalla10.png");
  creditos = loadImage ("CREDITOS.png");
  Tipo = loadFont ("Fuente.vlw");

  estado = "inicio";
}

void draw () {

  textFont(Tipo); 

  // IMAGEN DE ESTADOS

  if (estado.equals("inicio") ) {
    image (inicio, 0, 0);
    textAlign(CENTER);
    fill(255);
    textSize(25);
    text("[HACÉ CLICK PARA EMPEZAR]", width/2, 635);
  } else if (estado.equals("uno") ) {
    image (uno, 0, 0);
  } else if (estado.equals("dos") ) {
    image (dos, 0, 0);
  } else if (estado.equals("tres") ) {
    image (tres, 0, 0);
  } else if (estado.equals("cuatro") ) {
    image (cuatro, 0, 0);
  } else if (estado.equals("cinco") ) {
    image (cinco, 0, 0);
  } else if (estado.equals("seis") ) {
    image (seis, 0, 0);
  } else if (estado.equals("siete") ) {
    image (siete, 0, 0);
  } else if (estado.equals("ocho") ) {
    image (ocho, 0, 0);
  } else if (estado.equals("nueve") ) {
    image (nueve, 0, 0);
  } else if (estado.equals("diez") ) {
    image (diez, 0, 0);
  } else if (estado.equals("creditos") ) {
    image (creditos, 0, 0);
    textSize(30);
    textAlign(CENTER);
    fill(255);
    text("Aventura gráfica: StoryMode F20", width/2, 290);
    text("Programación: Proni León", width/2, 350);
    text("Gráficas: Proni León", width/2, 410);
    text("Materia: Tecnologia Multimedial 1", width/2, 470);
    text("Comisión: 3", width/2, 530);

    fill(#ff015b);
    rect(360, 610, 304, 61);

    fill(0);
    textSize(20);
    text("CUARENTENA 2020 EDITION", width/2, 650);
  }
};

// CAMBIO DE ESTADOS

void mousePressed () {

  // INICIO

  if (estado.equals("inicio") ) {
    estado = "uno";
  }

  // PANTALLA 1

  else if (estado.equals("uno") ) {
    if (mouseX > 80 && mouseX < 300 && mouseY > 205 && mouseY < 560 ) {
      estado = "dos";
    }
    if (mouseX > 725 && mouseX < 935 && mouseY > 205 && mouseY < 560 ) {
      estado = "tres";
    }
  }
  // PANTALLA 2

  else if (estado.equals("dos") ) {
    if (mouseX > 80 && mouseX < 300 && mouseY > 205 && mouseY < 560 ) {
      estado = "cuatro";
    }
    if (mouseX > 725 && mouseX < 935 && mouseY > 205 && mouseY < 560 ) {
      estado = "cinco";
    }
  }
  // PANTALLA 3

  else if (estado.equals("tres") ) {
    if (mouseX > 80 && mouseX < 300 && mouseY > 205 && mouseY < 560 ) {
      estado = "seis";
    }
    if (mouseX > 725 && mouseX < 935 && mouseY > 205 && mouseY < 560 ) {
      estado = "uno";
    }
  }
  // PANTALLA 4

  else if (estado.equals("cuatro") ) {
    if (mouseX > 80 && mouseX < 300 && mouseY > 205 && mouseY < 560 ) {
      estado = "siete";
    }
    if (mouseX > 725 && mouseX < 935 && mouseY > 205 && mouseY < 560 ) {
      estado = "ocho";
    }
  }
  // PANTALLA 5

  else if (estado.equals("cinco") ) {
    if (mouseX > 80 && mouseX < 300 && mouseY > 205 && mouseY < 560 ) {
      estado = "nueve";
    }
    if (mouseX > 725 && mouseX < 935 && mouseY > 205 && mouseY < 560 ) {
      estado = "diez";
    }
  }
  // PANTALLA 6

  else if (estado.equals("seis") ) {
    estado = "creditos";
  }
  // PANTALLA 7

  else if (estado.equals("siete") ) {
    estado = "creditos";
  }
  // PANTALLA 8

  else if (estado.equals("ocho") ) {
    estado = "creditos";
  }
  // PANTALLA 9

  else if (estado.equals("nueve") ) {
    estado = "creditos";
  }
  // PANTALLA 10

  else if (estado.equals("diez") ) {
    estado = "creditos";
  }
  // PANTALLA creditos

  else if (estado.equals("creditos") ) {
    estado = "inicio";
  }
  //
};   
