function varargout = PRIORITY_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PRIORITY_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OpeningFcn, ...
                   'gui_OutputFcn',  @PRIORITY_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OutputFcn, ...
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

function PRIORITY_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
set(handles.release,'Enable','off');
set(handles.hold,'Enable','off');    
guidata(hObject, handles);

function varargout = PRIORITY_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton3_Callback(hObject, eventdata, handles)
cla;
set(handles.STOPBUTTON,'UserData',0);
posx=get(handles.posx,'string');
posy=get(handles.posy,'string');
posz=get(handles.posz,'string');
partdent=get(handles.partden,'string');
posx=(str2num(posx));
posy=(str2num(posy));
posz=(str2num(posz));
partdent=(str2num(partdent));

if (partdent > 0)
        if(posx>-1)
            if(posy>-1)
                 if(posz>-1)
                   
a=posx;
b=posy;
c=posz;
n=partdent;
p=[];
q=[];
s=[];

size=0;
hold on;
grid on;
lineLenght=10;
x=zeros(lineLenght);
y=zeros(lineLenght);
z=zeros(lineLenght);
rotate3d on;
p1=[0 0 0];
p2=[100 0 0];
p3=[0 100 0];
p4=[100 100 0];
p5=[0 0 100];
p6=[100 0 100];
p7=[0 100 100];
p8=[100 100 100];

pts=[p1;p2];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p2;p4];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p4;p3];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p3;p1];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p5;p6];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p6;p8];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p8;p7];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p7;p5];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p1;p5];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p2;p6];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p4;p8];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
pts=[p3;p7];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.1);
hold on;
grid on;
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
vert=[30 20 0;30 80 0;70 80 0;70 20 0;30 20 5;30 80 5;70 80 5;70 20 5];
patch('faces',fac,'vertices',vert,'FaceColor','g'); 
xlabel('X axis (m)', 'FontSize', 20);
ylabel('Y axis (m)', 'FontSize', 20);
zlabel('Z axis (km)', 'FontSize', 20);
set(gca, 'XColor', 'b', 'YColor', 'r', 'zColor', 'g');
xlabel('X axis (m)', 'FontSize', 20);
ylabel('Y axis (m)', 'FontSize', 20);
zlabel('Z axis (km)', 'FontSize', 20);
title(['SIMULATION OF MODEL OF COSMIC RAY SHOWER'],'FontSize',20 ,'Color', 'w');
flag=0;
no_of_arms=10;
previous_size=0;
blast=0;
collision=0;
u=1;
level11=n*(10/100);
level22=level11+(n*(20/100));
level33=level22+(n*(30/100));
level44=level33+(n*(40/100));
level1=level11;
level2=level22;
level3=level33;
level4=level44;

  for i=1:level1
      if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    x1(i)=fix(100*rand(1));
    y1(i)=fix(100*rand(1));
    z1(i)=fix(100*(1-(rand(1)*0.2)));
      end
end
for i=1:level2
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    x2(i)=fix(100*rand(1));
    y2(i)=fix(100*rand(1));
    z2(i)=fix(100*(0.8-(rand(1)*0.2)));
     end
end
for i=1:level3
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    x3(i)=fix(100*rand(1));
    y3(i)=fix(100*rand(1));
    z3(i)=fix(100*(0.6-(rand(1)*0.2)));
     end
end
for i=1:level4
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    x4(i)=fix(100*rand(1));
    y4(i)=fix(100*rand(1));
    z4(i)=fix(100*(0.4-(rand(1)*0.2)));
     end
end
set(handles.hold,'Enable','on');
while 1
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    view(3);
start=[a b c];
  q1=5*rand(1);

for j=1:no_of_arms
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
    view (3);  
direction=[rand(1) rand(1) rand(1)];
r=5*rand(1);
for i=1:lineLenght
     if get(handles.STOPBUTTON,'UserData') 
        break ;
    else
        if (r>0)&&(r<1.25)
    x(i)=start(1)-direction(1)*i;
    y(i)=start(2)-direction(2)*i; 
    z(i)=start(3)-direction(3)*i; 
    
    elseif (r>1.25)&&(r<2.5)
    x(i)=start(1)-direction(1)*i;
    y(i)=start(2)+direction(2)*i; 
     z(i)=start(3)-direction(3)*i; 
 
    elseif (r>2.5)&&(r<3.75)
    x(i)=start(1)+direction(1)*i;
    y(i)=start(2)-direction(2)*i; 
     z(i)=start(3)-direction(3)*i; 
 
    elseif (r>3.75)&&(r<5)
    x(i)=start(1)+direction(1)*i;
    y(i)=start(2)+direction(2)*i; 
    z(i)=start(3)-direction(3)*i; 
  
    end
      if (q1>0)&&(q1<1.25)
    plot3(x,y,z,'r.');
    elseif (q1>1.25)&&(q1<2.5)
   plot3(x,y,z,'b.');
    elseif (q1>2.5)&&(q1<3.75)
   plot3(x,y,z,'g.');
    elseif (q1>3.75)&&(q1<5)
   plot3(x,y,z,'y.');
      end
while 1
  if  get(handles.hold,'UserData') 
      set(handles.hold,'Enable','off');
 pause(1);
  else   
     break; 
  end 
end  
 drawnow;
   g= fix(x(i));
   h= fix(y(i));
   f= fix(z(i)); 
   
   %fix(100*(0.8-(rand(1)*0.2)));
  if (f<=100)&&(f>80)
   for  k=1:level1       
    if (x1(k)==g)&&(y1(k)==h)&&(z1(k)==f)
   size=size+1;
    p(size)=g;
    q(size)=h;
    s(size)=f;
    break;
     end  
  end
  end
  if (f<=80)&&(f>60)
    for k=1:level2       
    if (x2(k)==g)&&(y2(k)==h)&&(z2(k)==f)
   size=size+1;
    p(size)=g;
    q(size)=h;
    s(size)=f;
    break;
     end  
    end
  end
    if (f<=60)&&(f>40)
    for  k=1:level3
    if (x3(k)==g)&&(y3(k)==h)&&(z3(k)==f)
   size=size+1;
    p(size)=g;
    q(size)=h;
    s(size)=f;
    break;
     end  
    end
    end
  if (f<=40)&&(f>20)
  for  k=1:level4
    if (x4(k)==g)&&(y4(k)==h)&&(z4(k)==f)
   size=size+1;
    p(size)=g;
    q(size)=h;
    s(size)=f;
    break;
     end  
  end
  end
if (z(i)<5)
       if ((x(i)>30)&&(x(i)<70))&&((y(i)>20)&&(y(i)<80))
    flag=1;
           break;
       end
  end
     end 
end
if (flag==1)
    break;
end 
     end
end
if (flag==1)
    break;
     end  
blast=blast+1;
collision=size-previous_size;
set(handles.blast,'string',blast);
set(handles.collision,'string',collision);
if size==previous_size
else
a=p(u);
b=q(u);
c=s(u);
u=u+1;
end
no_of_arms=5;
previous_size=size;
     end
end
else
    msgbox('ENTER POSITION OF Z [IT SHOULD BE GREATER THAN -1]');
end
else
    msgbox('ENTER POSITION OF Y [IT SHOULD BE GREATER THAN -1]');
end
else
    msgbox('ENTER POSITION OF X [IT SHOULD BE GREATER THAN -1]');
end
else
    msgbox('ENTER PARTICLE DENSITY [IT SHOULD BE GREATER THAN O]');
end

function STOPBUTTON_Callback(hObject, eventdata, handles)
set(hObject,'UserData',1)
warndlg('SIMULATION STOPPED','WARNING');

function partden_Callback(hObject, eventdata, handles)

function partden_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posz_Callback(hObject, eventdata, handles)

function posz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posy_Callback(hObject, eventdata, handles)

function posy_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posx_Callback(hObject, eventdata, handles)

function posx_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hold_Callback(hObject, eventdata, handles)
set(handles.release,'Enable','on');
set(hObject,'UserData',1)

function release_Callback(hObject, eventdata, handles)
set(handles.hold,'Enable','on');
set(handles.hold,'UserData',0)

function blast_Callback(hObject, eventdata, handles)

function blast_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function collision_Callback(hObject, eventdata, handles)

function collision_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
