function varargout = SHORTEST_ARM_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SHORTEST_ARM_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OpeningFcn, ...
                   'gui_OutputFcn',  @SHORTEST_ARM_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OutputFcn, ...
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

function SHORTEST_ARM_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OpeningFcn(hObject, eventdata, handles, varargin)
set(handles.stopbutton,'Enable','off');
set(handles.graph,'Enable','off');
set(handles.excel,'Enable','off');
set(handles.prob,'Enable','off');
set(handles.missed,'Enable','off');
set(handles.hit,'Enable','off');
handles.output = hObject;
guidata(hObject, handles);

function varargout = SHORTEST_ARM_BASED_COSMIC_RAY_SHOWER_SIMULATION_GUI_2ND_JAN_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function startbutton_Callback(hObject, eventdata, handles)
set(hObject,'UserData',1)
cla;
set(handles.stopbutton,'UserData',0);
set(handles.stopbutton,'Enable','on');
pause(1);
tr=get(handles.nooftrials,'string');
invel=get(handles.invel,'string');
ineng=get(handles.ineng,'string');
posx=get(handles.posx,'string');
posy=get(handles.posy,'string');
posz=get(handles.posz,'string');
partdent=get(handles.partden,'string');
tr=(str2num(tr));
invel=(str2num(invel));
ineng=(str2num(ineng));
posx=(str2num(posx));
posy=(str2num(posy));
posz=(str2num(posz));
partdent=(str2num(partdent));
if (tr > 0)
if (partdent > 0)
        if(posx>-1)
            if(posy>-1)
                 if(posz>-1)
                      if (invel > 0)
                           if (ineng > 0)


ht=0;
nht=0;
d=0;

trial=tr;
n=partdent;
 a=posx;
 b=posy;
 c=posz;
 
rotate3d on;
fontSize=20;  
hold on;
grid on;
view(3);
rotate3d on;
fac=[1 2 3 4;2 6 7 3;4 3 7 8;1 5 8 4;1 2 6 5;5 6 7 8];
vert=[30 20 0;30 80 0;70 80 0;70 20 0;30 20 5;30 80 5;70 80 5;70 20 5];
patch('faces',fac,'vertices',vert,'FaceColor','g'); 
set(gca, 'XColor', 'b', 'YColor', 'r', 'zColor', 'g');
xlabel('X axis (m)', 'FontSize', 20);
ylabel('Y axis (m)', 'FontSize', 20);
zlabel('Z axis (km)', 'FontSize', 20);
title(['SIMULATION OF MODEL OF COSMIC RAY SHOWER'],'FontSize',20 ,'Color', 'w');
 xlim([0 100]);
 ylim([0 100]);
 zlim([0 100]);
 blast=0;
p1=[0 0 0];
p2=[100 0 0];
p3=[0 100 0];
p4=[100 100 0];
p5=[0 0 100];
p6=[100 0 100];
p7=[0 100 100];
p8=[100 100 100];
pts=[p1;p2];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p2;p4];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p4;p3];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p3;p1];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p5;p6];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p6;p8];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p8;p7];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p7;p5];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p1;p5];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p2;p6];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p4;p8];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);

pts=[p3;p7];
plot3(pts(:,1),pts(:,2),pts(:,3),'y','Linewidth',0.01);
 
level1=n*(10/100);
level2=level1+(n*(20/100));
level3=level2+(n*(30/100));
level4=level3+(n*(40/100));
  x1 = zeros(n);
  y1 = zeros(n);
  z1 = zeros(n);
for k=1:n
     if get(handles.stopbutton,'UserData') 
        break ;
    else
    x1(k)=fix(100*rand(1));
    y1(k)=fix(100*rand(1));
if (k>(0-1) && k<level1)
    z1(k)=fix(100*(1-(rand(1)*0.2)));
end
if (k>(level1-1) && k<level2)
    z1(k)=fix(100*(0.8-(rand(1)*0.2)));  
end
if (k>(level2-1)&& k<level3)
    z1(k)=fix(100*(0.6-(rand(1)*0.2)));
end
if (k>(level3-1)&& k<=level4)
    z1(k)=fix(100*(0.4-(rand(1)*0.2)));
end
     end
end


altitude=0;
for v=1:trial
     if get(handles.stopbutton,'UserData') 
        break
     else
 p1=[a,b,c];
p2=[50,50,150];
pts=[p1;p2];
plot3(pts(:,1),pts(:,2),pts(:,3),'r','Linewidth',2,'LineStyle',':');
velocity=invel;
energy=ineng;
while 1
     if get(handles.stopbutton,'UserData') 
        break
    else
start=[a b c];
hold on;
grid on;
lineLenght=10;
x=zeros(lineLenght);
y=zeros(lineLenght);
z=zeros(lineLenght);
dist=zeros(n);
m=10;
  q=fix(8*rand(1));
for j=1:m
     if get(handles.stopbutton,'UserData') 
        break
    else
    view (3);
direction=[rand(1) rand(1) rand(1)];
r=10*rand(1);
for i=1:lineLenght
     if get(handles.stopbutton,'UserData') 
        break
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
if (q>1)&&(q<2.1)
    plot3(x,y,z,'r.');
elseif (q>2)&&(q<4.1)
    plot3(x,y,z,'g.');
elseif (q>4)&&(q<6.1)
    plot3(x,y,z,'b.');    
elseif (q>6)&&(q<8.1)
    plot3(x,y,z,'m.');
end
   g= x(i);
   h= y(i);
   f= z(i);  
   
  if (z(i)<5)
       if ((x(i)>30)&&(x(i)<70))&&((y(i)>20)&&(y(i)<80))
    break;
       end
  end
   for  k=1:n       
     dist(k)=fix(sqrt(((x1(k)-g)^2+(y1(k)-h)^2+(z1(k)-f)^2))); 
  end
  if (dist(k)>=0 && dist(k)<=1)
         break;
  end 
      dist1(i)=(sqrt(((x1(i)-g)^2+(y1(i)-h)^2+(z1(i)-f)^2)));
      a1(i)=x(i);
      b1(i)=y(i);
      c1(i)=z(i);
end
end
smallest=dist1(1);
for i=1:m
 if ( dist1(i)<smallest) 
     smallest=dist1(i);
      a=a1(i);
      b=b1(i);
      c=c1(i);
     
 end
end

if (z(i)<5)
       if ((x(i)>30)&&(x(i)<70))&&((y(i)>20)&&(y(i)<80))
    break;
       end
end
     end
end
 if (z(i)<5)
     if ((x(i)>30)&&(x(i)<70))&&((y(i)>20)&&(y(i)<80))
         
         ht=ht+1;   
     else
         nht=nht+1;
     end
     break;
 end
blast=blast+1;
if velocity <= 0
    break;
end
if energy <= 0
    break;
end
altitude(blast)=fix(c);
speed(blast)=velocity;
tenergy(blast)=energy;
velocity=velocity-((velocity*25)/100);
energy=energy-((energy*25)/100);
     end
end
no_of_blast_in_1_trail(v)=blast;
     end
end
msgbox('STIMULATION COMPLETE!!');
PROB=ht/trial;
set(handles.prob,'string',PROB);
set(handles.hit,'string',ht);
set(handles.missed,'string',nht);
pause(1);
set(handles.graph,'Enable','on');
pause(1);
set(handles.excel,'Enable','on');
pause(1);
while 1

    pause(1);   
  if get(handles.graph,'UserData')  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%drawing graph%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
check=1;
for v=1:trial
figure 
for i=check:no_of_blast_in_1_trail(v)
xlim([0 (3*(10^8))]);
ylim([0 100]);
grid on;
plot(speed(i),altitude(i),'g.');
set(gca, 'XColor', 'b', 'YColor', 'r');
xlabel('Velocity (m/s)', 'FontSize', 10);
ylabel('Altitude (m)', 'FontSize', 10);
title(['REDUCTION IN VELOCITY WITH RESPECT TO ALTITUDE TRIAL = [',num2str(v),']'],'FontSize',10 ,'Color', 'k');
hold on;
end
check=check+no_of_blast_in_1_trail(v);
hold off;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%drawing graph%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
check=1;
for v=1:trial
figure 
for i=check:no_of_blast_in_1_trail(v)
ylim([0 100]);
grid on;
plot(tenergy(i),altitude(i),'g.');
set(gca, 'XColor', 'b', 'YColor', 'r');
xlabel('Energy (%)', 'FontSize', 10);
ylabel('Altitude (m)', 'FontSize', 10);
title(['ENERGY DISSIPATON WITH RESPECT TO ALTITUDE TRIAL = [',num2str(v),']'],'FontSize',10 ,'Color', 'k');
hold on;
end
check=check+no_of_blast_in_1_trail(v);
hold off;
end
pause(2);
set(handles.excel,'Enable','on');
  set(handles.graph,'UserData',0);
  pause(1);
  end
if get(handles.excel,'UserData')
    msgbox('EXPORTING TO EXCEL..');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%plotting in excel%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
head=0;
line=1;
header={'Altitude','Velocity'};
for v=1:trial
     if head==0
     xlswrite('datalogmatlab.xlsx',header,'sheet1', ['A' num2str(line)]);
     head=1;
     end
     if head>0
    while 1 
     for i=1:no_of_blast_in_1_trail(v)
       line=line+1;
      xlswrite('datalogmatlab.xlsx',altitude(i),'sheet1', ['A' num2str(line)]);
      xlswrite('datalogmatlab.xlsx',speed(i),'sheet1', ['B' num2str(line)]);
     end
         break;
    end
     line=line+1;
space={' ',' '};
  xlswrite('datalogmatlab.xlsx',space,'sheet1', ['A' num2str(line)]);
  head=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%plotting in excel%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
head=0;
line=1;
header={'Altitude','Energy'};
for v=1:trial
     if head==0
     xlswrite('datalogmatlab.xlsx',header,'sheet2', ['A' num2str(line)]);
     head=1;
     end
     if head>0
    while 1 
     for i=1:no_of_blast_in_1_trail(v)
       line=line+1;
      xlswrite('datalogmatlab.xlsx',altitude(i),'sheet2', ['A' num2str(line)]);
      xlswrite('datalogmatlab.xlsx',tenergy(i),'sheet2', ['B' num2str(line)]);
     end
         break;
    end
     line=line+1;
space={' ',' '};
  xlswrite('datalogmatlab.xlsx',space,'sheet2', ['A' num2str(line)]);
  head=0;
    end
end
set(handles.graph,'Enable','on');
set(handles.excel,'UserData',0);
pause(1);
msgbox('EXCEL EXPORT COMPLETED');
end
end
else
    msgbox('ENTER INITIAL ENERGY OF THE RADIOACTIVE PARTICLE [IT SHOULD BE GREATER THAN 0]');
end
else
    msgbox('ENTER INITIAL VELOCITY OF THE RADIOACTIVE PARTICLE [IT SHOULD BE GREATER THAN 0]');
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
else
    msgbox('ENTER NUMBER OF TRIALS [IT SHOULD BE GREATER THAN O]');
end


function stopbutton_Callback(hObject, eventdata, handles)
set(hObject,'UserData',1)
warndlg('SIMULATION STOPPED','WARNING')

function graph_Callback(hObject, eventdata, handles)
set(handles.excel,'Enable','off');
set(hObject,'UserData',1);

function excel_Callback(hObject, eventdata, handles)
set(handles.graph,'Enable','off');
set(hObject,'UserData',1);

function hit_Callback(hObject, eventdata, handles)

function hit_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function missed_Callback(hObject, eventdata, handles)

function missed_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function prob_Callback(hObject, eventdata, handles)

function prob_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posx_Callback(hObject, eventdata, handles)

function posx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posy_Callback(hObject, eventdata, handles)

function posy_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function posz_Callback(hObject, eventdata, handles)

function posz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function partden_Callback(hObject, eventdata, handles)

function partden_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function nooftrials_Callback(hObject, eventdata, handles)

function nooftrials_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function invel_Callback(hObject, eventdata, handles)

function invel_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ineng_Callback(hObject, eventdata, handles)

function ineng_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
