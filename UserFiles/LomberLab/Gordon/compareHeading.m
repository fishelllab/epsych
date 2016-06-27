function  x = compareHeading(curHeading,Headings,Tol)
% x = compareHeading(curHeading,Headings,Tol)
%
% Compare the current heading value to a 1xN vector of target Headings +/-
% a specified tolerance.
%
% Stephen Gordon 2016


Hvec = repmat(Headings,2,1)+Tol*[-ones(size(Headings)); ones(size(Headings))];

for x = 1:length(Headings)
    if curHeading > Hvec(1,x) && curHeading < Hvec(2,x)
        return
    end
end

x = nan;