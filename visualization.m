input = fopen('input.txt', 'r');
for i = 1:4
    param = fgets(input);
    eval(param);
end
fclose(input);
rectangle('Position', [0 0 width height]);
axis([0-radius, width+radius, 0-radius, height+radius]);
grid on;
output = fopen('output.txt', 'r');
while ~feof(output)
    circles = fgets(output);
    eval(circles);
end

fclose(output);