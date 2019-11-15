function raiz = biseccion(def,x0,x1,tol)
f= inline(def);
if f(x0)*f(x1)<0
    x=x0;
    while abs(f(x))>tol
        x=(x0+x1)/2;
        if f(x0)*f(x)<0
            x1=x;
        else
            x0=x;
        end
    end
    raiz=x;
else
    raiz='Modifica el signo';
end