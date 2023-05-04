%% 19通道功率值提取
%%
clear;clc;close all
setpath5 = ['D:\Project\Paper5\6_fooofresult\'];
setpath6 = ['D:\Project\Paper5\6_fooofresult\AD\']; savepath6=['D:\Project\paper5\7_result\AD\'];
setpath7 = ['D:\Project\Paper5\6_fooofresult\CN\']; savepath7=['D:\Project\paper5\7_result\CN\'];
setpath8 = ['D:\Project\Paper5\6_fooofresult\FTD\'];savepath8=['D:\Project\paper5\7_result\FTD\'];
cd(setpath5);

%% 1组
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

%% 2
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


%%  3
cd(setpath8);
resultfile= dir([setpath8,'*.mat']);
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

%% 整体
cd(setpath5);
resultfile= dir([setpath5,'*.mat']);
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

%% 每个人的19通道功率值提取（修改所需的频段提取数据）
band=[8,12];
freqs=fooof_results(1).freqs  ;

a=db2pow(ap_fits);%线性尺度的ap_fits
apfits=[];
for i= 1:88
    apfit=[];
    for j=1:19
       aa=a(j,:,i); 
       rp1=bandpower(aa, freqs,band, 'psd');
       apfit =[apfit;rp1];
    end
       apfits =[apfits,apfit];
     
end

x=db2pow(fooofed_spectrums);%线性尺度
fooofspectrum=[];
for i= 1:88
    fooofspectra=[];
    for j=1:19
       xx=x(j,:,i) ;
       rp2=bandpower(xx, freqs,band, 'psd');
       fooofspectra =[fooofspectra;rp2];
    end
       fooofspectrum =[fooofspectrum,fooofspectra];
     
end

z=db2pow(power_spectrums);%线性尺度
power_spectrum=[];
for i= 1:88
    powerspectra=[];
    for j=1:19
       zz=z(j,:,i) ;
       rp4=bandpower(zz, freqs,band, 'psd');
        powerspectra =[ powerspectra;rp4];
    end
       power_spectrum =[power_spectrum, powerspectra];
     
end
% 先用bandpower计算频带功率，再用拟合频谱和拟合曲线相减
band_periodic_power=(fooofspectrum-apfits)';
band_power_spectrum= power_spectrum';
band_fooofspectrum= fooofspectrum';
band_apfits=apfits';
%求每个被试在通道平均的功率值
mean_rawpower= mean( power_spectrum);
mean_fitpower= mean( fooofspectrum);
mean_apfit=    mean( apfits);
mean_periodic_power= mean(fooofspectrum-apfits);


% 将拟合频谱和拟合曲线在线性尺度相减，再用bandpower计算频带功率
a=db2pow(ap_fits);%线性尺度的ap_fits
x=db2pow(fooofed_spectrums);%线性尺度
y=x-a;
PERIODIC=[];
for i= 1:88
    PERIODIC_powerspectra=[];
    for j=1:19
       yy=y(j,:,i) ;
       rp3=bandpower(yy, freqs,band, 'psd');
        PERIODIC_powerspectra =[ PERIODIC_powerspectra;rp3];
    end
       PERIODIC =[PERIODIC, PERIODIC_powerspectra];
     
end
mean_PERIODIC= mean(PERIODIC);



