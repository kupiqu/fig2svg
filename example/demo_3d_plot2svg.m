prevFontName = get(0,'defaultAxesFontName');
set(0,'defaultAxesFontName','Arial');
resolutionScaling = 96/get(0,'ScreenPixelsPerInch');
fontSize = 16*resolutionScaling;
lineWidth = 1*resolutionScaling;
markerSize = 10*resolutionScaling;

figure
[x y z] = sphere(20);
s = surface(x,y,z,'facecolor','flat','cdata',z);
set(s,'edgecolor','black','facealpha','flat','alphadata',x.*z,'LineWidth',lineWidth);
alpha('scaled');
axis equal
box on
grid on
% campos([2 13 10]);
view(3)
if ~UIverlessthan('8.4')
  % set(gca,'XTickLabelRotation',45,'YTickLabelRotation',45,'ZTickLabelRotation',45)
end
set(gca,'Fontsize',fontSize,'LineWidth',lineWidth)
xlabel('X','Fontsize',fontSize);
ylabel('Y','Fontsize',fontSize);
zlabel('Z','Fontsize',fontSize);
title('Sphere^2 with Alpha_{Data}','Fontsize',fontSize);
plot2svg('sphere.svg'); % ,'',1);

set(0,'defaultAxesFontName',prevFontName);
