#include <iostream.h>
#include <stdlib.h>
int main()
{
     int op,a,b,c,d,e,f,g,h,suma,rest,mult,divi;

     cout<<"estoy poniendo la hora(apreta enter)"<<endl;
     system("time>t.txt");
     cout<<"estoy poniendo la fecha(apreta enter)"<<endl;
     system("date>d.txt");





      cout<<"operaciones aritmeticas\n";
      cout<<"1)adicion\n";
      cout<<"2)sustraccion\n";
      cout<<"3)multiplicacion\n";
      cout<<"4)division\n";
      cout<<"5)salir\n";
      cout<<"¿que opereracion desea realizar?";
      cin>>op;

  if(op==1)
  {
       cout<<"usted eligio adicion\n";
       cout<<"ingrese el primer numero\n";
       cin>>a;
       cout<<"ingrese el segundo numero\n";
       cin>>b;
       suma=a+b;
       cout<<" el resultado es "<<suma<<endl;
   }


  if(op==2)
  {
       cout<<"usted eligio sustraccion\n";
       cout<<"ingrese el primer numero\n";
       cin>>c;
       cout<<"ingrese el segundo numero\n";
       cin>>d;
       rest=c-d;
       cout<<"el resultado es "<<rest<<endl;
   }





  if(op==3)
  {
       cout<<"usted eligio multiplicacion\n";
       cout<<"ingrese el primer numero\n";
       cin>>e;
       cout<<"ingrese el segundo numero\n";
       cin>>f;
       mult=e*f;
       cout<<"\n el resultado es "<<mult<<endl;
   }





  if(op==4)
  {
       cout<<"usted eligio division\n";
       cout<<"ingrese el primer numero";
       cin>>g;
       cout<<"ingrese el segundo numero\n";
       cin>>h;
       divi=g/h;
       cout<<"\n el resultado es "<<divi<<endl;
   }






  if(op==5)
  {
       cout<<"fin\n";
   }

      system("PAUSE");
      return 0;
}
