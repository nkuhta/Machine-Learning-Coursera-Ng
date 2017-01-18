
######################################
##########  Vectorization  ###########
######################################

%  Should use numerical linear algebra packages when possible. 

%  hypothesis = sum [i=0...n] theta_i * x_i

%  Unvectorized example
prediction=0;
n=10;

x=ones(10,1);
theta=ones(10,1);

for i = 1:n
  prediction= prediction+theta(i)*x(i);
end;

%  vectorized - represent sum as [theta_Transpose * x]
v=theta'*x;  %  using octave highly optimized matrix * routine.  

######################################
########  Gradient Descent  ##########
######################################






