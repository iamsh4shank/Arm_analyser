function varargout = RR_GUI(varargin)
% RR_GUI MATLAB code for RR_GUI.fig
%      RR_GUI, by itself, creates a new RR_GUI or raises the existing
%      singleton*.
%
%      H = RR_GUI returns the handle to a new RR_GUI or the handle to
%      the existing singleton*.
%
%      RR_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RR_GUI.M with the given input arguments.
%
%      RR_GUI('Property','Value',...) creates a new RR_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RR_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RR_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RR_GUI

% Last Modified by GUIDE v2.5 10-Dec-2020 15:53:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RR_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @RR_GUI_OutputFcn, ...
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


% --- Executes just before RR_GUI is made visible.
function RR_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RR_GUI (see VARARGIN)

% Choose default command line output for RR_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RR_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RR_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in simulateBtn.
function simulateBtn_Callback(hObject, eventdata, handles)
% hObject    handle to simulateBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function xEdit_Callback(hObject, eventdata, handles)
% hObject    handle to xEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xEdit as text
%        str2double(get(hObject,'String')) returns contents of xEdit as a double
x = get(handles.xEdit,'String');
return x;


% --- Executes during object creation, after setting all properties.
function xEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yEdit_Callback(hObject, eventdata, handles)
% hObject    handle to yEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yEdit as text
%        str2double(get(hObject,'String')) returns contents of yEdit as a double


% --- Executes during object creation, after setting all properties.
function yEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
