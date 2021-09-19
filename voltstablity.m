%Written by Abhishek saini
%M.Tech Power system (SVNIT,surat)
%abhisheksaini.eed@gmail.com


%% P-V curve
clc;
clear;
p = (0:0.01:0.21);    
n=length(p);
k=1;

for i=1:n
    v(i)=sqrt(1/2 - p(i)*k-sqrt(1/4-p(i)*k-p(i)*p(i))) ;
    l(i)=sqrt(1/2 - p(i)*k+sqrt(1/4-p(i)*k-p(i)*p(i)));
end

plot(p,v,'color','r','linewidth',2);
hold on;
grid on;
plot(p,l,'color','y','linewidth',2);
hold on;
m=(0:0.01:0.25);
nn=length(m);
k=0.75;
for i=1:nn
    pp(i)=sqrt(1/2 - m(i)*k-sqrt(1/4-m(i)*k-m(i)*m(i))) ;
    ll(i)=sqrt(1/2 - m(i)*k+sqrt(1/4-m(i)*k-m(i)*m(i)));
end

plot(m,pp,'color','r','linewidth',1.5);
hold on;
plot (m,ll,'color','y','linewidth',1.5);

hold on;

mm=(0:0.01:0.65);
mm_size =length(mm);
k=-0.25;
for i=1:mm_size
    ppp(i)=sqrt(1/2 - mm(i)*k-sqrt(1/4-mm(i)*k-mm(i)*mm(i))) ;
    lll(i)=sqrt(1/2 - mm(i)*k+sqrt(1/4-mm(i)*k-mm(i)*mm(i)));
end

plot(mm,ppp,'color','r','linewidth',1.5);
hold on;
plot (mm,lll,'color','y','linewidth',1.5);


%% P-Q curve
vv=1:0.01:1.5;
vsize=length(vv);
p1=1;      %put p  as a ref
del1=zeros(1,length(vv));
del_size = length(del1);
for i=1:vsize 
del1(i)= asin(p1/vv(i));
end

for i=1:vsize
        Q(i)= -vv(i)*vv(i) +vv(i)*cos(del1(i));    
end
plot(vv,abs(Q),'color','k','linewidth',2);

hold on;

vvv=0.75:0.01:1.5;
vv1size = length(vvv);
p111=0.75;
del1l2=zeros(1,length(vvv));

for i=1:vv1size 
del1l2(i)= asin(p111/vvv(i));
end

for i=1:vv1size
     QQQ(i)= -vvv(i)*vvv(i) +vvv(i)*cos(del1l2(i));   

end
plot(vvv,abs(QQQ),'color','b','linewidth',2);













    
