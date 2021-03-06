function [checks pt] = checks_detect(bin,pts,x,y,x0,y0,checks,pt)
[L n]=bwlabel(bin);
stats=regionpr s(L,'Centroid');
for lm=1:n
    mx=stats(lm).Centroid(1)-x0;
    my=stats(lm).Centroid(2)-y0;
    lmx=nearest(mx/x*6)+1;
    lmy=nearest(my/y*4)+1;
    pt(lmy,lmx)=pts;
    temp=[lmx-1 5-lmy];
    checks=[checks;temp];
end

end

