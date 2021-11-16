#include <iostream.h>
#include <stdlib.h>
#include <fstream.h>
int main()
{       int a,ed,es,x;

   cout<<"ingrese la cantidad de alumnos del curso"<<endl;
   cin >> a;
   ofstream boca;
    boca.open("datos.txt");
   for (x=1;x<=a;x++)
   {
    cout<<"ingrese la edad del alumno "<<x<<endl;
    cin>>ed;
    boca<<"la edad del alumno "<<x<<" es "<<ed<<"años"<<endl;
    cout<<"ingrese la estatura del alumno "<<x<< "(en centimetros)"<<endl;
    cin >>es;
    boca<<"la estatura del alumno "<<x<<" es "<<es<<endl;

   }
     boca.close();
    cout<<"la informacion de los alumnos se encontrara en el archivo datos.txt"<<endl;
      system("PAUSE");
      return 0;
}

