%%
clear;clc;close all
setpath5 = ['D:\Project\Paper5\6_fooofresult\'];
setpath6 = ['D:\Project\Paper5\6_fooofresult\AD\']; savepath6=['D:\Project\paper5\7_result\AD\'];
setpath7 = ['D:\Project\Paper5\6_fooofresult\CN\']; savepath7=['D:\Project\paper5\7_result\CN\'];
setpath8 = ['D:\Project\Paper5\6_fooofresult\FTD\'];savepath8=['D:\Project\paper5\7_result\FTD\'];
cd(setpath5);
%%
cd(setpath5);
for i=1:19
fooof_plot(fooof_results(i),1)
end
%% 总体浏览数据
cd(setpath5);
resultfile= dir([setpath5,'*.mat']);
file_name =natsort({resultfile.name});%顺序or倒序？
errors=[];r_squareds=[];offsets=[];exponents=[];power_spectrums=[];fooofed_spectrums=[];ap_fits=[];
for m=1:length(resultfile)
load(file_name{m});
    error = cat(1,fooof_results.error); errors = [errors,error];
    r_squared = cat(1,fooof_results.r_squared); r_squareds = [r_squareds,r_squared];
    aperiodic_param = cat(1,fooof_results.aperiodic_params);
    offset = aperiodic_param(:,1); offsets = [offsets,offset];
    exponent = aperiodic_param(:,2); exponents =[exponents,exponent];
    peak_param = cat(1,fooof_results.peak_params);gaussian_param= cat(1,fooof_results.gaussian_params);%由于每个通道的峰值参数和高斯参数维度不一致，故不能组建矩阵
    power_spectrum = cat(1,fooof_results.power_spectrum);power_spectrums = cat(3,power_spectrums,power_spectrum);
    fooofed_spectrum = cat(1,fooof_results.fooofed_spectrum);fooofed_spectrums = cat(3,fooofed_spectrums,fooofed_spectrum);
    ap_fit = cat(1,fooof_results.ap_fit);ap_fits = cat(3,ap_fits,ap_fit);
    clear error  r_squared  aperiodic_param offset exponent  peak_param gaussian_param power_spectrum  fooofed_spectrum ap_fit 
end
%% 第一组
cd(setpath6);
resultfile= dir([setpath6,'*.mat']);
file_name =natsort({resultfile.name});
errors=[];r_squareds=[];offsets=[];exponents=[];power_spectrums=[];fooofed_spectrums=[];ap_fits=[];
for m=1:length(resultfile)
load(file_name{m});
    error = cat(1,fooof_results.error); errors = [errors,error];
    r_squared = cat(1,fooof_results.r_squared); r_squareds = [r_squareds,r_squared];
    aperiodic_param = cat(1,fooof_results.aperiodic_params);
    offset = aperiodic_param(:,1); offsets = [offsets,offset];
    exponent = aperiodic_param(:,2); exponents =[exponents,exponent];
    peak_param = cat(1,fooof_results.peak_params);gaussian_param= cat(1,fooof_results.gaussian_params);%由于每个通道的峰值参数和高斯参数维度不一致，故不能组建矩阵
    power_spectrum = cat(1,fooof_results.power_spectrum);power_spectrums = cat(3,power_spectrums,power_spectrum);
    fooofed_spectrum = cat(1,fooof_results.fooofed_spectrum);fooofed_spectrums = cat(3,fooofed_spectrums,fooofed_spectrum);
    ap_fit = cat(1,fooof_results.ap_fit);ap_fits = cat(3,ap_fits,ap_fit);
    clear error  r_squared  aperiodic_param offset exponent  peak_param  power_spectrum  fooofed_spectrum ap_fit 
end
%% 第二组
cd(setpath7);
resultfile= dir([setpath7,'*.mat']);
file_name =natsort({resultfile.name});
errors=[];r_squareds=[];offsets=[];exponents=[];power_spectrums=[];fooofed_spectrums=[];ap_fits=[];
for m=1:length(resultfile)
load(file_name{m});
    error = cat(1,fooof_results.error); errors = [errors,error];
    r_squared = cat(1,fooof_results.r_squared); r_squareds = [r_squareds,r_squared];
    aperiodic_param = cat(1,fooof_results.aperiodic_params);
    offset = aperiodic_param(:,1); offsets = [offsets,offset];
    exponent = aperiodic_param(:,2); exponents =[exponents,exponent];
    peak_param = cat(1,fooof_results.peak_params);gaussian_param= cat(1,fooof_results.gaussian_params);%由于每个通道的峰值参数和高斯参数维度不一致，故不能组建矩阵
    power_spectrum = cat(1,fooof_results.power_spectrum);power_spectrums = cat(3,power_spectrums,power_spectrum);
    fooofed_spectrum = cat(1,fooof_results.fooofed_spectrum);fooofed_spectrums = cat(3,fooofed_spectrums,fooofed_spectrum);
    ap_fit = cat(1,fooof_results.ap_fit);ap_fits = cat(3,ap_fits,ap_fit);
    clear error  r_squared  aperiodic_param offset exponent  peak_param  power_spectrum  fooofed_spectrum ap_fit 
end


%%  第三组
cd(setpath8);
resultfile= dir([setpath8,'*.mat']);
file_name =natsort({resultfile.name});
%file_name =natsort({resultfile.name}, '[-+]?(NaN|Inf|\d+\.?\d*)');
errors=[];r_squareds=[];offsets=[];exponents=[];power_spectrums=[];fooofed_spectrums=[];ap_fits=[];
for m=1:length(resultfile)
load(file_name{m});
    error = cat(1,fooof_results.error); errors = [errors,error];
    r_squared = cat(1,fooof_results.r_squared); r_squareds = [r_squareds,r_squared];
    aperiodic_param = cat(1,fooof_results.aperiodic_params);
    offset = aperiodic_param(:,1); offsets = [offsets,offset];
    exponent = aperiodic_param(:,2); exponents =[exponents,exponent];
    peak_param = cat(1,fooof_results.peak_params);gaussian_param= cat(1,fooof_results.gaussian_params);%由于每个通道的峰值参数和高斯参数维度不一致，故不能组建矩阵
    power_spectrum = cat(1,fooof_results.power_spectrum);power_spectrums = cat(3,power_spectrums,power_spectrum);
    fooofed_spectrum = cat(1,fooof_results.fooofed_spectrum);fooofed_spectrums = cat(3,fooofed_spectrums,fooofed_spectrum);
    ap_fit = cat(1,fooof_results.ap_fit);ap_fits = cat(3,ap_fits,ap_fit);
    clear error  r_squared  aperiodic_param offset exponent  peak_param  power_spectrum  fooofed_spectrum ap_fit 
end
%% 全部通道平均
mean_r_squared = mean(r_squareds,1)';
mean_errors = mean(errors,1)';
mean_offsets = mean(offsets,1)';
mean_exponents = mean(exponents,1)';

%全部通道平均
freqs=fooof_results(1).freqs  ;

a=db2pow(ap_fits);%返回线性尺度
b = mean(a,1);%线性尺度下的均值
c=squeeze(b);
mean_ap_fits=log10(c);%返回对数尺度
%figure;plot(freqs,c);
%figure;plot(log10(freqs),c);

x=db2pow(fooofed_spectrums);%返回线性尺度
y = mean(x,1);%线性尺度下的均值
z=squeeze(y);
mean_fooofed_spectrums=log10(z);%返回对数尺度
%figure;plot(freqs,(z));
%figure;plot(freqs,mean_fooofed_spectrums);
m=db2pow(power_spectrums);%返回线性尺度
n = mean(m,1);%线性尺度下的均值
o=squeeze(n);
mean_power_spectrums=log10(o);%返回对数尺度
%figure;plot(freqs,(o));

w = z-c;
mean_fooofflatten_spectrum= log10(w);%返回对数尺度
%figure;plot((freqs),(mean_fooofflatten_spectrum));
%figure;plot((freqs),w);

u = o-c;
mean_powerflatten_spectrum= log10(u);%返回对数尺度
%figure;plot((freqs),(mean_powerflatten_spectrum));
%figure;plot((freqs),u);


%% 按被试平均
mean_r_squared = mean(r_squareds,2);
mean_errors = mean(errors,2);
mean_exponents = mean(exponents,2);
mean_offsets = mean(offsets,2)
%%
figure; topoplot(a,EEGchanlocs,'shading','interp','numcontour',5,'style','both','electrodes','on','chaninfo',EEGchaninfo,'drawaxis','off');...
    title('hcvson_offsets');

[h grid_or_val plotrad_or_grid, xmesh, ymesh]=topoplot(a,EEGchanlocs,'shading','interp','numcontour',5,'style','both','electrodes','on','chaninfo',EEGchaninfo,'drawaxis','off');...
    title('offsets');

%%
figure; topoplot(b,EEGchanlocs,'style','fill','electrodes','on','chaninfo',EEGchaninfo,'drawaxis','off');...
    title('hcvsoff_offsets')

figure; topoplot(c,EEGchanlocs,'style','fill','electrodes','on','chaninfo',EEGchaninfo,'drawaxis','off');...
    title('offvson_offsets')
%%
clear;clc
p=[]
FDR=[]
%%
FDR1=mafdr(p);    
FDR2=mafdr(p,'BHFDR', true);  
FDR3=mafdr(p,'Lambda', [0.01:0.01:0.95]);                          
%FDR4= mafdr(p, 'Method', MethodValue, [0.01:0.01:0.95]);   
%figure;plot(freq,p);title('原始p值');hold on;plot(freq,FDR1);hold on;plot(freq,FDR2);hold on;plot(freq,FDR3)

%close all
%figure;,plot(1:32,FDR1);title('FDR1');
%figure;plot(1:32,FDR2);title('FDR2');
%figure;plot(1:32,FDR3);title('FDR3');
%figure;plot(freq,FDR4);title('FDR4');
%
a= find  (FDR1<0.05);
b= find  (FDR2<0.05);
c= find  (FDR3<0.05);
%%
plot(freq,FDR)
X= find  (FDR<0.05);
d=find(p<0.05)

%% 寻找峰值参数，一个一个找
clear
clc
m=1
setpath6 = ['D:\Project\paper4\5_fooofresult\hc\'];
resultfile= dir([setpath6,'*.mat']);
file_name =natsort({resultfile.name}, '[-+]?(NaN|Inf|\d+\.?\d*)');
load(file_name{m});
 peak_param = cat(1,fooof_results.peak_params);gaussian_param= cat(1,fooof_results.gaussian_params);%由于每个通道的峰值参数和高斯参数维度不一致，故不能组建矩阵
 


