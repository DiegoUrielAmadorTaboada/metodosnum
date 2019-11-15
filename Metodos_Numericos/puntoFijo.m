function raiz = puntoFijo(gx,x0,c,tol)
syms x
%fprintf('punto fijo \n');
%gx=input('ingrese la funcion igualada a x: ');
g=inline(gx);
%x=input('ingrese el valor inicial: ');
%niter=input('ingrese numero de iteraciones: ');
%error=input(' error tolerado: ');
i=1;
%fprintf('i \t x \t \t error \n')
%fprintf('0 \t %f \n',x)
while(i<=c)
    a=x0;
    x0=g(a);
    e=abs(x0-a);
    if (e<tol)
        i=c+1;
    end
    i=i+1;
end
raiz=x0;
%fprintf(aproximacion);

%fprintf('i la aproximacion es : %1.7f con un error de: %f \n',x,e);
%fprintf(x);
end