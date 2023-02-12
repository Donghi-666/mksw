function varargout = doumsw(varargin)
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @doumsw_OpeningFcn, ...
                   'gui_OutputFcn',  @doumsw_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before doumsw is made visible.
function doumsw_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
set(handles.figure1,'menubar','figure','toolbar','figure')%���ù�����
% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = doumsw_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
a1=get(handles.T1,'String');
b1=get(handles.M1,'String');
T1=str2double(a1);
m1=str2double(b1);

a2=get(handles.T2,'String');
b2=get(handles.M2,'String');
T2=str2double(a2);
m2=str2double(b2);
if(m1*m2==0)
     msgbox('Ħ����������Ϊ�㣬�������������','��ʾ','warn');
else
[c1,d1,e1]=caluate(T1,m1);%���Ȼ����������ƽ��

[c2,d2,e2]=caluate(T2,m2);%���Ȼ����������ƽ��
data=[d1 d2;            %����2*�еı�����gui�ж�Ӧ��
      e1 e2;
      c1 c2;];
  set(handles.uitable1,'Data',data);%��data������Data��ʽ��������С�
%����ͼ��
 v=0:3000;%������������ȡֵ��Χ
 y1=mx(T1,m1,v);
 y2=mx(T2,m2,v);
 
% axes(handles.axes1);
plot(handles.axes1,v,y1,'lineWidth',5)%������������
hold on;
plot(handles.axes1,v,y2,'lineWidth',5)%������������
hold on;
title(handles.axes1,'���˹Τ���ʷֲ�','FontSize',20);
set(handles.axes1,'XGrid','on','YGrid','on');
xlabel(handles.axes1,'v');
ylabel(handles.axes1,'f(V)','FontSize',20);
legend(handles.axes1,'����1','����2')
end
  
  
  
  
  
  


function T1_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%���ַ�������ʽ�洢�ı������Ϣ
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function T1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M1_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%���ַ�������ʽ�洢�ı������Ϣ
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function M1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T2_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%���ַ�������ʽ�洢�ı������Ϣ
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function T2_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M2_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%���ַ�������ʽ�洢�ı������Ϣ
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function M2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end