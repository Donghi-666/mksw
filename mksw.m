function varargout = mksw(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @mksw_OpeningFcn, ...
    'gui_OutputFcn',  @mksw_OutputFcn, ...
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


% --- Executes just before mksw is made visible.
function mksw_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.pushbutton_true1,'enable','off')%无选项将不被激活
set(handles.figure1,'menubar','figure','toolbar','figure')%设置工具栏
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = mksw_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
set(handles.pushbutton_true1,'enable','on')%激活确定按钮
set(handles.radiobutton1,'value',1)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',0)
option=1;


function radiobutton2_Callback(hObject, eventdata, handles)
set(handles.pushbutton_true1,'enable','on')%激活确定按钮
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',1)
set(handles.radiobutton3,'value',0)
option=2;


function radiobutton3_Callback(hObject, eventdata, handles)
set(handles.pushbutton_true1,'enable','on')%激活确定按钮
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',0)
set(handles.radiobutton3,'value',1)
option=3;



function pushbutton_true1_Callback(hObject, eventdata, handles)

if get(handles.radiobutton1,'value')
    option=1;
    disp('选中1')
end
if get(handles.radiobutton2,'value')
    option=2;
    disp('选中2')
end
if  get(handles.radiobutton3,'value')
    option=3;
    disp('选中3');
end
switch(option)
    case 1
        collide();
    case 2
        %close(mksw); %想关闭的matlab界面名称——对应gui.m和gui.fig
        set(mkswd,'Visible','on');  %想打开的界面名称——gui.m和gui.fig
        
    case 3
        set(doumsw,'Visible','on');  %想打开的界面名称——gui.m和gui.fig
        
end
guidata(hObject,handles);
