function [KE,PE] = autoGen_energy(q1,q2,q3,q4,q5,dq1,dq2,dq3,dq4,dq5,m1,m2,m3,m4,m5,I1,I2,I3,I4,I5,l1,l2,l3,l4,c1,c2,c3,c4,c5,g)
%AUTOGEN_ENERGY
%    [KE,PE] = AUTOGEN_ENERGY(Q1,Q2,Q3,Q4,Q5,DQ1,DQ2,DQ3,DQ4,DQ5,M1,M2,M3,M4,M5,I1,I2,I3,I4,I5,L1,L2,L3,L4,C1,C2,C3,C4,C5,G)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    24-Oct-2015 18:13:12

t2 = dq1.^2;
t3 = cos(q1);
t26 = l1.*t3;
t31 = c1.*t3;
t4 = -t26+t31;
t5 = sin(q1);
t6 = c1.*t5-l1.*t5;
t7 = cos(q2);
t12 = dq1.*l1.*t3;
t27 = l2.*t7;
t30 = c2.*t7;
t8 = -t12-dq2.*(t27-t30);
t9 = sin(q2);
t15 = dq1.*l1.*t5;
t10 = -t15+dq2.*(c2.*t9-l2.*t9);
t11 = cos(q3);
t17 = dq2.*l2.*t7;
t25 = c3.*t11;
t28 = l3.*t11;
t13 = t12+t17-dq3.*(t25-t28);
t14 = sin(q3);
t19 = dq2.*l2.*t9;
t16 = t15+t19-dq3.*(c3.*t14-l3.*t14);
t23 = cos(q4);
t18 = t12+t17-c4.*dq4.*t23;
t21 = sin(q4);
t20 = t15+t19-c4.*dq4.*t21;
t22 = t15+t19-c5.*dq5.*sin(q5)-dq4.*l4.*t21;
t29 = cos(q5);
t24 = t12+t17-c5.*dq5.*t29-dq4.*l4.*t23;
KE = I1.*t2.*(1.0./2.0)+I2.*dq2.^2.*(1.0./2.0)+I3.*dq3.^2.*(1.0./2.0)+I4.*dq4.^2.*(1.0./2.0)+I5.*dq5.^2.*(1.0./2.0)+m1.*(t2.*t4.^2+t2.*t6.^2).*(1.0./2.0)+m2.*(t8.^2+t10.^2).*(1.0./2.0)+m3.*(t13.^2+t16.^2).*(1.0./2.0)+m4.*(t18.^2+t20.^2).*(1.0./2.0)+m5.*(t22.^2+t24.^2).*(1.0./2.0);
if nargout > 1
    PE = g.*m2.*(t26+t27-t30)-g.*m1.*t4+g.*m4.*(t26+t27-c4.*t23)+g.*m3.*(-t25+t26+t27+t28)+g.*m5.*(t26+t27-c5.*t29-l4.*t23);
end
