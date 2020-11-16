clear
M=[0 0 0 0;0 0 0 1;0 0 1 0;0 0 1 1;0 1 0 0;0 1 0 1;0 1 1 0;0 1 1 1;1 0 0 0;1 0 0 1;1 0 1 0;1 0 1 1;1 1 0 0;1 1 0 1;1 1 1 0;1 1 1 1]
P=[0 1 1;1 0 1;1 1 0;1 1 1]
I=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]
G=[I P]
for i=1:16
    c(i,:)=[0 0 0 0 0 0 0]
    c(i,:)=M(i,:)*G
    c(i,:)=modulo(c(i,:),2)
end
for i=1:16
    a(i)=0
    for j=1:7
        if (c(i,j)==1) then
            a(i)=a(i)+1
        end
    end
end
dmin=min(a(a>0))
t1=dmin-1
if (modulo(dmin,2)==0) then
    t2=(dmin-2)/2
    else t2=(dmin-1)/2
end
disp("dmin:")
disp(dmin)
disp("Error detection capability:")
disp(t1)
disp("Error correction capability:")
disp(t2)
