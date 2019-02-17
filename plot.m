
function a = plt()
a.variabel = {'x1', 'x2'};
a.batasan = {[-10; 10], [-10; 10]};
a.fungsi = @(x1,x2)(-((sin(x1)*cos(x2)) + ((4/5)*(exp(1-sqrt((x1.^2)+(x2.^2)))))));
figure('Name','Surface Plot Fungsi - 1301164712','NumberTitle','off');
[x, y] = meshgrid(-10:0.25:10);
surf(x,y, a.fungsi(x,y), 'FaceColor', 'interp', 'EdgeColor','none')
end