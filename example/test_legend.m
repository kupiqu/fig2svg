clear;
close all;
clc;

set(0,'defaultAxesFontName','Arial');
resolutionScaling = 96/get(0,'ScreenPixelsPerInch');
fontSize = 16*resolutionScaling;
lineWidth = 2*resolutionScaling;
markerSize = 10*resolutionScaling;

hold on
p = plot(1:10,[1:10;10:-1:1],'s-','LineWidth',lineWidth,'MarkerSize',markerSize);
set(gca,'Fontsize',fontSize,'LineWidth',lineWidth)
l = legend(p,{'data1','data2'},'Location','NorthEastOutside','Orientation','Vertical','Fontsize',fontSize,'Box','on','LineWidth',lineWidth);
% l = legend(p,{'data1','data2'},'Location','SouthWestOutside','Orientation','Vertical','Fontsize',fontSize,'Box','on','LineWidth',lineWidth);
plot2svg('legend.svg')
saveas(gca,'legend_saveas.svg')
