%%%���ļ��������ڲ�����Ŀ���뽨���ģ�ɾ����Ӱ��������Ŀ
collide();%���Ե��ú���
[a, b, c]=caluate(0,0);%���Ե������˹Τ

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
guidata(hObject,handles);%������������