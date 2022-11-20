clc
clear
close

m=moviein(200);
for n=1:200
R1=1;
r=linspace(0,R1,100);
fai=linspace(0,5*pi,100);
[R,T]=meshgrid(r,fai);
x=cos(T+n*pi/12+n/100*pi).*R;
y=cos(T+n*pi/12).*R;
z=10*T/(2*pi)+10;
mesh(x,y,z);


m(:,n)=getframe;

end
movie(m,2);