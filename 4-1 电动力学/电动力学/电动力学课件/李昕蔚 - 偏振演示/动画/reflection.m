clc
clear
close

m=moviein(200);
for n=1:200
R1=1;
r=linspace(0,R1,100);
fai=linspace(0,5*pi,100);
[R,T]=meshgrid(r,fai);
x=0.6*cos(T+n*pi/12).*R;
y=0.6*cos(T+n*pi/12).*R;
x1=0.6*cos(T+pi/2-n*pi/12).*R;
y1=0.6*cos(T-n*pi/12).*R;
z=T/(2*pi)+1;
zdir=[0,1,0];



h2=mesh(z-0.7,y1,x1);
rotate(h2,zdir,-45);

hold on;
axis manual
h1=mesh(x,y,z-1);
rotate(h1,zdir,-45);


axis manual
hold off;

%»­Ô²Öù
h = 0.1; % height
ra = 2; % radius
% Create constant vectors
tht = linspace(0,2*pi,100); z = linspace(0,h,20);
% Create cylinder

xa = repmat(ra*cos(tht),20,1)+0.9; ya = repmat(ra*sin(tht),20,1);
za = repmat(z',1,100)-1;
% To close the ends
X = [xa*0; flipud(xa); (xa(1,:))*0]; Y = [ya*0; flipud(ya); (ya(1,:))*0];
Z = [za; flipud(za); za(1,:)];
% Draw cylinder

[TRI,v]= surf2patch(X,Y,Z,'triangle');

patch('Vertices',v,'Faces',TRI,'facecolor',[0.5 0.8 0.8],'facealpha',0.8);
view(10,10)
m(:,n)=getframe;

end
movie(m,2);