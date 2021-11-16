#include <iostream.h>
#include <stdlib.h>

int main()

     {
     int a,b,c,n;

    cout<<"Ingrese la nota del primer trimestre: \n";
    cin>>a;
    cout<<"Ingrese la nota del segundo trimestre: \n";
    cin>>b;
    cout<<"Ingrese la nota del tercer trimestre: \n";
    cin>>c;

    n=(a+b+c)/3;
    cout<<"El promedio es: "<<n<<endl;
   {
       if(n>=7)
          cout<<"Aprobado \n";
       if(n<7&n>=4)
          cout<<"Recupera en diciembre \n";
       if(n<4)
          cout<<"Compenza en febrero \n";

   }
      system("PAUSE");
      return 0;
 }
