close all
clear all
clc

tempo=1:96;



dados=importdata('SAA0K_20031004(277).TXT');
dados=dados.data;

hmF2(:,1)=dados(:,11);
hF(:,1)=dados(:,10);
f0F2(:,1)=dados(:,9);



dados=importdata('SAA0K_20031010(283).TXT');
dados=dados.data;



hmF2(:,2)=dados(:,11);
hF(:,2)=dados(:,10);
f0F2(:,2)=dados(:,9);

dados=importdata('SAA0K_20031011(284).TXT');
dados=dados.data;



hmF2(:,3)=dados(:,11);
hF(:,3)=dados(:,10);
f0F2(:,3)=dados(:,9);


dados=importdata('SAA0K_20031012(285).TXT');
dados=dados.data;

hmF2(:,4)=dados(:,11);
hF(:,4)=dados(:,10);
f0F2(:,4)=dados(:,9);



dados=importdata('SAA0K_20031023(296).TXT');
dados=dados.data;

hmF2(:,5)=dados(:,11);
hF(:,5)=dados(:,10);
f0F2(:,5)=dados(:,9);


[N,M]=size(hmF2);

figure(1)
for i=1:M
    

subplot1=subplot(3,1,1)

plot(tempo,hF(:,i),'k')

ylabel('h''F (Km)');

set(subplot1,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {''});

xlim([1,96])

hold on

subplot2=subplot(3,1,2)

plot(tempo,f0F2(:,i),'k')

ylabel('f0F2 (MHz)');

set(subplot2,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {''});

xlim([1,96])

hold on

subplot3 =subplot(3,1,3)

plot(tempo,hmF2(:,i),'k')

ylabel('hmF2 (Km)');

set(subplot3,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {'','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'});

xlim([1,96])

hold on
end
hold on

mediahF=smooth(nanmean(hF,2),12,'moving');
desviohF=std(hF,0,2);
mediaf0F2=smooth(nanmean(f0F2,2),12,'moving');
desviof0F2=std(f0F2,0,2);
mediahmF2=smooth(nanmean(hmF2,2),12,'moving');
desviohmF2=std(hmF2,0,2);

grayColor = [0.7, 0.7, 0.7];  % Light gray

(1)

subplot1=subplot(3,1,1)

plot(tempo,mediahF,'LineWidth',3)
hold on
errorbar(mediahF,desviohF, 'Color', grayColor)

ylabel('h''F (Km)');

set(subplot1,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {''});

xlim([1,96])

hold on

subplot2=subplot(3,1,2)

plot(tempo,mediaf0F2,'LineWidth',3)
hold on
errorbar(mediaf0F2,desviof0F2, 'Color', grayColor)

ylabel('f0F2 (MHz)');

set(subplot2,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {''});

xlim([1,96])

hold on

subplot3 =subplot(3,1,3)

plot(tempo,mediahmF2,'LineWidth',3)
hold on
errorbar(mediahmF2,desviohmF2, 'Color', grayColor)

ylabel('hmF2 (Km)');

set(subplot3,'FontSize',24,'LineWidth',2,'XTick',...
    [1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 96],...
    'XTickLabel',...
    {'','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'});

xlim([1,96])

hold on