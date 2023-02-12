function f=collide()
clf; %%用于清除当前窗口
n=20; 
s=0.02; 
x = rand(n,1)-0.5; %生成一个20*1个0-1的随机数矩阵
y = rand(n,1)-0.5; 
h = plot(x,y,'.'); 
axis([-1 1 -1 1]) 
axis square 
grid off %关闭网格
%set(h,'EraseMode','xor','MarkerSize',18) 
set(h,'EraseMode','xor','MarkerSize',18) 
grid on; 
title('Press Ctl-C to stop'); 
f=h;
while 1 
 drawnow % 屏幕刷新命令
 x = x + s*randn(n,1); 
 y = y + s*randn(n,1); 
 set(h,'XData',x,'YData',y) 
end
end