#include <iostream.h>
#include <stdlib.h>
#include <fstream>

int main ()


{
     ifstream archivo("notas.txt");
     char ntext[128];
     int nota,cont,sum,alt,prom;
     cont=0;
     sum=0;
     alt=0;
     while(!archivo.eof())
     {
     archivo.getline(ntext,sizeof(ntext));
     nota=atoi(ntext);
     cont=cont+1;
     sum=sum+nota;

     if(alt==0)
     {
     alt=nota;
      }

     if(alt<nota)
     {
     alt=nota;
      }

     }


     prom=sum/cont;
     cout<<"la cantidad de notas es"<<cont<<endl;
     cout<<"el promedio de notas es de"<<prom<<endl;
     cout<<"la mejor nota es"<<alt<<endl;
     cout<<"sos un nive cualquiera     ";
     cout<<"el programa ya esta consumido";
      system("PAUSE");
      return 0;
}
