clear;
close all;
clc;

% issue #17 fixed, but only last plot is exported

figure
hold on
yyaxis left
plot(rand(3))
yyaxis right
plot(rand(3))
fig2svg('yyaxis.svg')

% workaround:
% figure
% plotyy(1:3,rand(1,3),1:3,rand(1,3))
% fig2svg('plotyy.svg')
