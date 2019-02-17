function solusi = simmulated_annealing(state_awal,temperatur,temperatur_akhir,alpha)

state_sekarang = state_awal;
cost_sekarang = cost(state_awal);
solusi_terbaik = state_awal;
cost_terbaik = cost_sekarang;
j =1;
while(temperatur > temperatur_akhir)
     for i = 1 : 100
            x1 = rand*20-10;
            x2 = rand*20-10;
            state_baru = [x1,x2];
            cost_baru = cost(state_baru);
     end
   
     if (cost_baru < cost_sekarang)
                state_sekarang = state_baru;
                cost_sekarang = cost_baru;
         if(cost_sekarang < cost_terbaik)
                    solusi_terbaik = state_sekarang;
                    cost_terbaik = cost_sekarang;
         end
      else
          prob = probability_acceptance(cost_baru,cost_sekarang,temperatur);
          if(prob>rand*2-1)
                    state_sekarang = state_baru;
                    cost_sekarang = cost_baru;
          end
       end
      j = j+1;
     temperatur = annealing_schedule(temperatur, alpha);
end
    solusi = [temperatur,solusi_terbaik,cost_terbaik];
    disp("x1 dan x2 optimal")
    disp(solusi_terbaik)
    disp("cost minimal")
    disp(cost_terbaik)
end