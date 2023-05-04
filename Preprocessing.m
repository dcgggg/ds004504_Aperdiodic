%% 
clear;clc;
setpath5 = ['D:\Project\Paper5\5_cleandata\'];
str ='D:\Project\Paper5\4_cleandata_noreference';
cd(str)
name = foreachDir(str);%遍历函数，需要修改函数参数,读取set数据文件名

for i=1:88
setfilepath=name{1, i}{1, 1}{1, 1};
setname  = setfilepath(end-30:end);
 EEG = pop_loadset(setfilepath);
 EEG = pop_reref( EEG, []);
 EEG = eeg_checkset( EEG );
 EEG = pop_saveset( EEG, 'filename',setname,'filepath',setpath5);
 
end