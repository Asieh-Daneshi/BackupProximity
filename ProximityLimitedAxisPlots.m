%% plots with limited y-axis
close all 
clear
clc
% =========================================================================
MeanFollowDensity=[51.70025,50.21528;51.55834,51.10367];
ConfidenceFollowDensity=[1.033515,0.857968;1.024943,0.985046];
fig1=figure; hold on
barFollowDensity=bar([0.9,1.1;1.9,2.1],MeanFollowDensity,4);
errorbar([0.875,1.13;1.875,2.13],MeanFollowDensity,ConfidenceFollowDensity,'.','color','black','linewidth',1.5)
set(barFollowDensity(2),'FaceColor','#6e8b3d');
set(barFollowDensity(1),'FaceColor','#9bcd9b');
ylim([48 54]);
xticks(1:3)
xticklabels({'4','7'})
legend([barFollowDensity(1),barFollowDensity(2)],'LowDensity','HighDensity','location','eastoutside')