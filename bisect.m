function y = bisect(fun,a,b)

if fun(a)*fun(b) > 0
        disp('Error. The function is positive at both ends.')
elseif fun(a) == 0
    y = a;
elseif fun(b) == 0
    y = b;
else 
epsilon = eps(1) * 10;
max_iter = 200;    
diff = fun(b)-fun(a);
iter = 0;
while abs(diff) > epsilon
    m = (a+b)/2;
    if fun(a)*fun(m) > 0
            a = m;
    elseif fun(b)*fun(m) > 0
            b = m;   
    end
    diff = fun(b)-fun(a);

    if iter > max_iter
            disp('Error: Maximal number of iterations reached.')
            break;
    end
    iter = iter + 1;
end
y = (a+b)/2;
end
end
