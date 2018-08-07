function ProfileFigureExport(ifig,fname,axst0);
% ifig=1;

%initialize figure
set(0,'DefaultAxesLineWidth',1,...
    'DefaultAxesFontSize',12,...
    'DefaultAxesColor','none');
collist=[0,0,0;1,0,0;0,1,0;0,0,1;1,1,0;0,1,1;1,0,1;...
    0.75,0.25,0.25;0.25,0.75,0.25;0.25,0.25,0.75];
ncolor=10;
icolor=0;

figure(ifig);clf;

axdef=axes;
axpos=get(axdef,'Position');
delete(axdef)

axst=copyobj(axst0,ifig);
axis(10.^[-20,-8,2,5]);
% axth=copyobj(handles.axesTemperature,ifig);
% axgs=copyobj(handles.axesGrainsize,ifig);
% axst=copyobj(handles.axesStrength,ifig);

% axstpos=get(axst,'Position');
% axthpos=axstpos;
% axthpos(3)=axstpos(3)/2;
% axstpos(1)=axthpos(1)+axthpos(3);
% axstpos(3)=axthpos(3);
% axgspos=axstpos;

set(axst,'units','normalized');
% set(axth,'units','normalized');
% set(axgs,'units','normalized');

set (axst,'Position',axpos,...
    'box','on',...
    'fontSize',12,...
    'Ydir','normal',...
    'Xdir','normal',...
    'XAxisLocation','bottom',...
    'YAxisLocation','left',...
    'Color','none',...
    'Xcolor','k',...
    'Ycolor','k',...
    'TickDir','in');
% set (axth,'Position',axthpos,...
%     'Ydir','reverse',...
%     'Xdir','reverse',...
%     'XAxisLocation','bottom',...
%     'YAxisLocation','right',...
%     'Color','none',...
%     'Xcolor','k',...
%     'Ycolor','k',...
%     'TickDir','in');
% set (axgs,'Position',axthpos,...
%     'Ydir','reverse',...%    'Xdir','reverse',...
%     'xscale','log',...
%     'XAxisLocation','top',...
%     'YAxisLocation','left',...
%     'Color','none',...
%     'Xcolor','k',...
%     'Ycolor','k',...
%     'TickDir','in');

set(get(axst,'xlabel'),'string','Strain rate (1/s)','fontSize',18);
set(get(axst,'ylabel'),'string','Integrate stress (MPa km)','fontSize',18);
% legend('Location','best')
% set(get(axth,'xlabel'),'string','Temperature (\circ C)','fontSize',18);
% set(get(axgs,'xlabel'),'string','Grain size (\mum)','fontSize',18);
% set(get(axgs,'ylabel'),'string','Depth (km)','fontSize',18);
% 
% set(get(axth,'Children'),'linestyle','-')

%     legend(labels.text,'Location','NorthWest')

orient landscape

print(ifig,'-dpdf',fname);