clc;
clearvars; 

data = xlsread('Iris_dataset.xlsx');

LB = 2; 
UB = 8; 
D = 12; 
N = 150; 
maxHesaplama = 50;
Delta = 3;
Ap = 0.5;
e = 0.3;

AAA(maxHesaplama, LB, UB, N, D, Delta, Ap, e, data);