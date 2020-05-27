private Rettangolo [] strisce_continue;
private Rettangolo [] carreggiata;
private final color ASFALTO = color(95, 95, 95);
private final color STRISCE = color (245, 245, 245);

public void settings(){
    size(800,600);
}

public void setup(){
    strisce_continue = new Rettangolo[3];
    carreggiata = new Rettangolo[4];

    for (int i = 0; i<4; i++){
        carreggiata[i].setCordX(i*200 + 100);
        carreggiata[i].setCordY(600);
        carreggiata[i].setAlt(600);
        carreggiata[i].setLung(200);
        carreggiata[i].setColore(ASFALTO);
    }

    for (int i = 0; i<4; i++){
        strisce_continue[i].setCordX(i*200 + 80);
        strisce_continue[i].setCordY(600);
        strisce_continue[i].setAlt(600);
        strisce_continue[i].setLung(40);
        strisce_continue[i].setColore(STRISCE);
    }

}