#include <iostream.h>
#include <stdlib.h>

int main()
{
   int a,b,c,r,d,e,f,g,h,i,o,x,y,z,op,cont;

      while ( op != 3 )
      {
       system("cls");

       cout<< "elija la opcion que desea realizar"<<endl;
       cout<< "1-ingresar un a¤o cualesquiera"<<endl;
       cout<< "2-ingresar dos a¤os cualesquiera"<<endl;
       cout<< "3-salir"<<endl;
       cin>> op;

       if (op==1)
       {
         cout << "ingrese el a¤o\n";
         cin >> a;
         r= a % 4;
          if (r==0)
          {
          cout << "el a¤o que ingeso es bisiesto"<<endl;
          }
          if (r!=0)
          {
          cout << "este a¤o no es bisiesto"<<endl;
          }
          c=a+1;
          b=c%4;
          if (b==0)
          {
          cout << "el a¤o mas cercano es " <<c <<endl;
          }
          d=a+2;
          e=d%4;
          if ( e==0 )
          {
          cout << "los a¤os mas cercanos son " <<d << " y " << a-2 <<endl;
          }
          f=a+3;
          g=f%4;
          if ( g==0 )
          {
          cout << "el a¤o mas cercano es " <<a-1<<endl;
          }
          system("pause");
        }

        if (op==2)
        {
         cout<< "ingrese el a¤o de comienzo y el a¤o de fin\n";
         cin >> h;
         cin >> i;
         for ( o=h; o<=i; o++ )
          {
            if ((o%4)==0)
            {
            cout<< "el a¤o " << o << " es bisiesto" << endl;
            system("PAUSE");
            }

          }
          system("PAUSE");

          }
      }
       system("PAUSE");
       return 0;
}

