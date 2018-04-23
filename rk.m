clear;
close all;
a=input('Enter your equation in terms of variable x:','s');
xi=input('Enter the initial limit of x:');
xf=input('Enter the final limit of x:');
h=input('Enter value of h:');
s=input('For Heus method enter 1,For mid point enter 2,for ralfson enter 3:');
fun=inline(a);
y=1;
n=(xf/h);
t=xi;
c(1)=0;
u(1)=0;
switch s
    case 1
   for i=0:n
    c(i+1)=t;
    u(i+1)=y; 
    k1=fun(t,y);
    k2=fun(t+h,y+k1*h);
    fprintf('y(%f)= %f\n',t,y);
    y=y+(h*0.5)*(k1+k2);
    t=t+h;
   end
    
    case 2
        for j=0:n 
          c(j+1)=t; 
          u(j+1)=y; 
          k1=fun(t,y);
          k2=fun(t+(h/2),y+(h*k1/2));
          fprintf('y(%f)= %f\n',j,y); 
          y=y+(h*k2);
          t=t+h;
           end
    case 3
            for k=0:n
          c(k+1)=t; 
          u(k+1)=y;
          k1=fun(t,y);
          k2=fun(t+(h*(3/4)),y+(h*k1*(3/4)));
          fprintf('y(%f)= %f\n',k,y);
          y=y+(((0.5*k1)+((2/3)*k2))*h);
          t=t+h;
            end
       otherwise
           fprintf('Invalid input\n');
        
    
end
fprintf('function:%s',a);
ezplot(c,u);
xlabel('x');
ylabel('y');
switch s
    case 1
        title('RK heuns Method ');
    case 2
        title('RK Mid point Method ');
    case 3
        title('RK Ralfson Method');
    otherwise
end
    