function [v1,v2,v3]=caluate(T,mu)
v1=((2*1.381*10^(-23)*T)/((mu*10^(-3))/(6.022*10^23))).^0.5;%最概然速率；
v2=((3*1.38*10^(-23)*T)/((mu*10^(-3))/(6.022*10^23))).^0.5;%输出方均根速率
v3=(((8*1.381*10^(-23)*T)/((pi*mu*10^(-3))/(6.022*10^23))).^0.5);%输出平均速率
end
