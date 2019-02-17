% author : DANDI TRIANTA BARUS
% nim    : 1301164712
clc
clear all

temperatur = 100;
temperatur_akhir = 0.00001;
alpha = 0.9999;
x1 = rand*20-10;
x2 = rand*20-10;
state_awal = [x1,x2];
jawaban = simmulated_annealing(state_awal,temperatur,temperatur_akhir,alpha);
