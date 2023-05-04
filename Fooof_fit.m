%%
clear;clc;
setpath5 = ['D:\Project\Paper5\5_cleandata\'];
setpath6 = ['D:\Project\paper5\6_fooofresult\'];
%%
tic;
cd(setpath5);
file= dir([setpath5,'*.set']);
for i=1:length(file)
    EEG = pop_loadset([setpath5, filesep, file(i).name]);
    savePath = strcat(setpath6,file(i).name(1:end-4), '.mat');
    cleandata=double(EEG.data);
%save (savePath,'cleandata');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PSD estimation
psds=[];
fs=500;
N=1000;
nfft= 2^nextpow2(N);
noverlap=125;
window= hamming(250);
for j=1:EEG.nbchan
    [pxx,f]= pwelch(cleandata(j,:),window,noverlap,nfft,fs);
    psds =[psds,pxx];
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FOOOF Parameter
freqs = f';
power_spectrum = psds';
%settings = struct();  
f_range = [2,40];
settings.peak_width_limits =[1 12];%(默认值0.5-12)
settings.max_n_peak=inf;%（默认值inf）
settings.min_peak_height=0;%（默认值0）
settings.peak_threshold=1;%（默认值2）
settings.aperiodic_mode='fixed';%（默认值fixed）
settings.verbose=1;%（默认值1）
settings;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Run FOOOF, also returning the model
fooof_results=([]);%构建空的数据结构体
for k=1:19
fooof_result  = fooof(freqs, power_spectrum(k,:), f_range, settings, 1);
fooof_results = [fooof_results,fooof_result];
end
%fooof_plot(fooof_results(15))
%fooof_plot(fooof_result,1);%对数频率值
save(savePath,'fooof_results');
end
cd(setpath6);
toc;
