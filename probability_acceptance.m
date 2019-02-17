function d = probability_acceptance(cost_baru,cost_sekarang,temperatur)
delta_e = cost_baru - cost_sekarang;
d = exp(-(delta_e)/temperatur);
end