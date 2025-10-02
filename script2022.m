%Ignacio García López

%PARTE 1
A = [1i -1i 1; 1 -1 1i; 1i 1 -1i];
B = A.';
C =conj(B);
D = A';
E= C-D;
%E es nula porque C y D son iguales, pues la adjunta es la conjugada de la
% traspuesta (o la traspuesta de la conjugada)
F= A*D;
u = diag(F);
v = F*u;
prodesc=dot(u,v);
fprintf('El valor del producto escalar de u y v es %f \n', prodesc)

%PARTE 2
x=linspace(-2*pi,2*pi);
y=linspace(-2*pi,2*pi);
[X,Y]= meshgrid(x,y);
Z = funcion2022(X,Y);
surf(X, Y, Z)
xlabel('x'),ylabel('y'),zlabel('z')

%PARTE 3
figure
t = linspace(-1,1);
G= zeros(length(t),6);
for n = 1:6
    G(:,n)= t.^n;
    subplot(2,3,n)
    plot(t,G(:,n))
    xlabel('t'),ylabel('y')
end

