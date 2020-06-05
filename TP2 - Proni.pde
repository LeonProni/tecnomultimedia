float posYtitulo, posYprodu, posYpj, posYpj2;
float valor;
float miconstrain;
PImage NubeDerecha, NubeIzquierda, FondoEscalera,FondoTarde,Titulo, FondoTarde2;
PFont Fuente; 
void setup() {
  size(1080, 720);
  background(156, 218, 234);
  NubeDerecha=loadImage("NubeDerecha.png");
  NubeIzquierda=loadImage("NubeIzquierda.png");
  FondoEscalera=loadImage("FondoEscalera.png");
  FondoTarde=loadImage("FondoTarde.png");
  FondoTarde2=loadImage("FondoTarde2.png");
  Titulo=loadImage("Titulo.png");
  valor=-3560;
  Fuente = loadFont("lemon.vlw");

  
  posYtitulo = 0;
  posYprodu = -1400;
  posYpj = -2120;
  posYpj2 = -2840;
}

void draw() {

   //Direccion
  fill(0);
   background(156,218,234);
   textAlign(CENTER);
   textFont(Fuente);
   text("DIRECCIÓN:", width/2,posYtitulo -100);
   text("PETE DOCTER - BOB PETERSON", width/2,posYtitulo);
   
   image(NubeDerecha, frameCount *3,0);
   image(NubeIzquierda, -frameCount *3,0); 
 
  //Produccion

image(FondoEscalera, 0, posYprodu);
  fill(255);
  textFont(Fuente);
  textSize(50);
  text("PRODUCCIÓN:", width/2, posYprodu +300);
  text("JONAS RIVERA - JOHN LASSETER - ANDREW STANTON", width/2, posYprodu +360); 
  
  //PROTAGONISTA1
  image(FondoTarde, 0, posYpj);
  fill(0);
  textFont(Fuente);
  textSize(40);
  textAlign(LEFT);
  text("PROTAGONISTA:", 400, posYpj +300);
  textSize(60);
  text("CARL FREDRICKSEN", 400, posYpj+360); 
  
   //PROTAGONISTA2
   image(FondoTarde2, 0, posYpj2);
  fill(0);
  textFont(Fuente);
  textSize(40);
  textAlign(LEFT);
  text("PROTAGONISTA:", 400, posYpj2 +300);
  textSize(60);
  text("RUSSELL", 400, posYpj2 +360); 
  
  //TITULO
valor= valor+2;
miconstrain= constrain(valor,-3560,0);
  image(Titulo, 0, miconstrain);
  
  
  posYtitulo = posYtitulo +2;
  posYprodu = posYprodu +2;
   posYpj = posYpj +2;
   posYpj2 = posYpj2 +2;
  
}

void mouseClicked() {
   posYtitulo = 0;
  posYprodu = -1400;
  posYpj = -2120;
  posYpj2 = -2840;
  valor=-3560;
  frameCount=0;
}
