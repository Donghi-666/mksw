function f=collide()
clf; %%���������ǰ����
n=20; 
s=0.02; 
x = rand(n,1)-0.5; %����һ��20*1��0-1�����������
y = rand(n,1)-0.5; 
h = plot(x,y,'.'); 
axis([-1 1 -1 1]) 
axis square 
grid off %�ر�����
%set(h,'EraseMode','xor','MarkerSize',18) 
set(h,'EraseMode','xor','MarkerSize',18) 
grid on; 
title('Press Ctl-C to stop'); 
f=h;
while 1 
 drawnow % ��Ļˢ������
 x = x + s*randn(n,1); 
 y = y + s*randn(n,1); 
 set(h,'XData',x,'YData',y) 
end
end