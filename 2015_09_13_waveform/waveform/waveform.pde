ArrayList<Circle> circles;
int space;
 
void setup() {
    size(800, 300);
    background(255);
   
    circles = new ArrayList();
    space = 10;
     
     
    for (int i = -2 * space ; i <= width + space; i += space) {
        circles.add(new Circle(i, height/2));
    }
}
 
void draw() {  //draw function loops
    fill(color(227, 223, 210), 255);
    rect(0, 0, width, height);
 
    for (Circle c : circles) {
        c.update();
        c.draw();
    }
}
 
class Circle {
    float cx, cy;
    float x, y;
    float rx, ry;
    float rT;
    float amplitude;
     
    Circle(float x, float y) {
        this.cx = x;
        this.cy = y;
         
        this.x = cx;
        this.y = cy;
         
        this.rx = 10;
        this.ry = rx;
         
        this.rT = 500;
        
        this.amplitude = 100;
    }
     
    void update() {
        float angle = x / 100 * map(mouseX, 0, width, 0, 360);
        y = amplitude * sin((angle * PI / 180)) + cy;
    }
     
    void draw() {
        noStroke();
        fill(color(18, 6, 16));
        ellipse(x, y, rx, ry);
    }
}