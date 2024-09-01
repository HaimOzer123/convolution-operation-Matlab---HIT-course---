function [h] = convolution(f,g) 
%ID 316063569

h = zeros(1,length(f)+length(g));

for n = 1:length(h)
for m = 1:length(f) 
    if n-m>=1 && n-m<=length(g) 
    h(n) = h(n) + f(m)*g(n-m);
    end
end
end
h = h(2:end); 
end