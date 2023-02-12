%%%此文件仅仅用于测试项目代码建立的，删除后不影响整体项目
collide();%测试调用函数
[a, b, c]=caluate(0,0);%测试调用麦克斯韦

a=get(handles.T_1,'String');
b=get(handles.Mol,'String');
T=str2num(a)
mu=str2num(b);
[c1,d1,e1]=caluate(T,mu);
c=num2str(c1);
set(handles.zgr,'String',c);
d=num2str(d1);
set(handles.fjg,'String',d);
e=num2str(e1);
set(handles.pj,'String',e);
guidata(hObject,handles);%结束更新数据