function raiz = newtonraphson(def,x0,c,tol)
syms x
f = str2sym(def);
df = diff(f);
fx = inline(char(f));
dfx = inline(char(df));
k = 1;
while abs(fx(x0))>tol | k>c
    x0 = x0-fx(x0)/dfx(x0);
    k=k+1;
end
if k>c
    raiz='No converge';
else
    raiz = x0;
end