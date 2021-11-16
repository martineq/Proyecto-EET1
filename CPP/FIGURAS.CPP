//5° Hacer un programa que permita elegir entre por lo menos cinco figuras geometricas
#include <iostream.h>
#include <stdlib.h>
#include <math.h>
int main()
{
    int tri,cir,cua,rec,rom,b,a,r,x,y;
    float sup;
    cout << "Elija una figura para saber su superficie\n "<<endl;
    cout << " 1-Triangulo "<<endl;
    cout << " 2-Circunferencia "<<endl;
    cout << " 3-Cuandrado "<<endl;
    cout << " 4-Rectangulo "<<endl;
    cout << " 5-Rombo\n"<<endl;
    cin >> x;

    if (x == 1)
    {
       cout<< "Ingrese la medida de la base\n" <<endl;
       cin >> b;
       cout<<"Ingrese la altura\n"<<endl;
       cin >> a;

       cout <<"La superficie del triangulo es de "<< b* a /2<<endl;
     }
    if (x == 2)
    {
       cout <<"ingrese la medida del radio "<< endl;
       cin >> r;
       sup= 3.1416 * pow (r,2);
       cout <<"La superficie de la circunferencia es de "<< sup << endl;
     }
     if (x == 3)
     {
        cout <<"Ingrese la medida del lado "<<endl;
        cin >> b;
        cout << "La superficie del cuadrado es de "<< b * b <<endl;
      }
     if (x ==4)
     {
        cout <<"Ingrese la medida de la base "<<endl;
        cin >> b;
        cout <<"Ingrese la altura "<<endl;
        cin >> a;
        cout << "La superficie del rectangulo es de "<< b * a << endl;
      }
      if (x == 5)
      {
         cout <<"Ingrese la medida de la diagonal " << endl;
         cin >>  b;
         cout <<"La superficie del rombo es de "<< b * b <<endl;
      }





      system("PAUSE");
      return 0;
}
