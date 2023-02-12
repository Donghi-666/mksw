function varargout = mkswd(varargin)

% Last Modified by GUIDE v2.5 15-May-2022 15:23:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mkswd_OpeningFcn, ...
                   'gui_OutputFcn',  @mkswd_OutputFcn, ...
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


% --- Executes just before mkswd is made visible.
function mkswd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mkswd (see VARARGIN)

set(handles.figure1,'menubar','figure','toolbar','figure')%设置工具栏

% Choose default command line output for mkswd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mkswd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mkswd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Mol_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%以字符串的形式存储文本框的信息
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Mol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_Callback(hObject, eventdata, handles)
input=str2double(get(hObject,'String'));%以字符串的形式存储文本框的信息
if(isempty(input))
    set(hObject,'String','0')
end
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fjg_Callback(hObject, eventdata, handles)
% hObject    handle to fjg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fjg as text
%        str2double(get(hObject,'String')) returns contents of fjg as a double


% --- Executes during object creation, after setting all properties.
function fjg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fjg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pj_Callback(hObject, eventdata, handles)
% hObject    handle to pj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pj as text
%        str2double(get(hObject,'String')) returns contents of pj as a double


% --- Executes during object creation, after setting all properties.
function pj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zgr_Callback(hObject, eventdata, handles)
% hObject    handle to zgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zgr as text
%        str2double(get(hObject,'String')) returns contents of zgr as a double


% --- Executes during object creation, after setting all properties.
function zgr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zgr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
a=get(handles.T,'String');
b=get(handles.Mol,'String');
T=str2double(a);
mu=str2double(b);
if(mu==0)
     msgbox('摩尔质量不能为零，重新输入','提示','warn');
else

[c1,d1,e1]=caluate(T,mu);
c=num2str(c1);
set(handles.zgr,'String',c);
d=num2str(d1);
set(handles.fjg,'String',d);
e=num2str(e1);
set(handles.pj,'String',e);

%绘制图像
 v=0:3000;%设置速率坐标取值范围
 y=mx(T,mu,v);
% axes(handles.axes1);
plot(handles.axes1,v,y,'lineWidth',5)%绘制坐标曲线
title(handles.axes1,'麦克斯韦速率分布');
set(handles.axes1,'XGrid','on','YGrid','on');
xlabel(handles.axes1,'v');
ylabel(handles.axes1,'f(V)');
%legend(handles.axes1,'稳定工况值','非稳定工况值')
end
guidata(hObject,handles);%结束更新数据

function axes1_CreateFcn(hObject, eventdata, handles)
