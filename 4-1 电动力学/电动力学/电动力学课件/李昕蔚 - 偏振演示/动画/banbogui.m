function varargout = banbogui(varargin)
% BANBOGUI MATLAB code for banbogui.fig
%      BANBOGUI, by itself, creates a new BANBOGUI or raises the existing
%      singleton*.
%
%      H = BANBOGUI returns the handle to a new BANBOGUI or the handle to
%      the existing singleton*.
%
%      BANBOGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BANBOGUI.M with the given input arguments.
%
%      BANBOGUI('Property','Value',...) creates a new BANBOGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before banbogui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to banbogui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help banbogui

% Last Modified by GUIDE v2.5 28-Nov-2012 15:30:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @banbogui_OpeningFcn, ...
                   'gui_OutputFcn',  @banbogui_OutputFcn, ...
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


% --- Executes just before banbogui is made visible.
function banbogui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to banbogui (see VARARGIN)

% Choose default command line output for banbogui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes banbogui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = banbogui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
handles.er=2*get(hObject,'Value');
guidata(hObject,handles);
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
handles.er=get(hObject,'Value');
guidata(hObject,handles);
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
val=get(hObject,'Value');
str=get(hObject,'String');
switch str{val}
    case '1:1'
        handles.size=1
    case '1:2'
        handles.size=2
end
guidata(hObject,handles);
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
handles.t0=get(hObject,'Value')
guidata(hObject, handles);
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
handles.ob=get(hObject,'Value')
guidata(hObject, handles);
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
clc

close
m=moviein(200);



for n=1:200
R1=1;
r=linspace(0,R1,100);
fai=linspace(0,5*pi,100);
[R,T]=meshgrid(r,fai);
x=cos(T+n/8*pi+handles.t0*2*pi).*R;
y=handles.size*cos(T+n/8*pi).*R;
z=10*T/(2*pi)+10;

x1=cos(T+handles.er*pi/2+n/8*pi+handles.t0*2*pi).*R;
y1=handles.size*cos(T+n/8*pi).*R;
z1=10*T/(2*pi)-15;
mesh(x,y,z);
hold on
mesh(x1,y1,z1);
axis([-3 3 -3 3 0 20])
axis square
hold off

%»­Ô²Öù
h = 1; % height
ra = 2; % radius
% Create constant vectors
tht = linspace(0,2*pi,100); z = linspace(0,h,20);
% Create cylinder

xa = repmat(ra*cos(tht),20,1); ya = repmat(ra*sin(tht),20,1);
za = repmat(z',1,100)+10;
% To close the ends
X = [xa*0; flipud(xa); (xa(1,:))*0]; Y = [ya*0; flipud(ya); (ya(1,:))*0];
Z = [za; flipud(za); za(1,:)];
% Draw cylinder

[TRI,v]= surf2patch(X,Y,Z,'triangle');

patch('Vertices',v,'Faces',TRI,'facecolor',[0.5 0.8 0.8],'facealpha',0.8);

view(3); grid on; axis square;
view(0,(handles.ob-0.5)*180)
m(:,n)=getframe;
end
movie(m,2,1);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
