#include <iostream>
#include <stdlib.h>

int main()
{
    int a,c,re,x;
    cout << "coloque el numero\n";
    cin  >>a;
    re=a;
    for (x=1;x<a;x++)
    {
      re=re*x;

    }
    cout <<"el resultado es "<< re<< endl;


    system("PAUSE");
      return 0;
}
