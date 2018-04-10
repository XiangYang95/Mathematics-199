%%
% create a section with two %% - sections can be run independently
% without the entire script being run at once


% comments are done with percent signs - this stuff in green is a comment

% comments are really important to communicate to other programmers what
% your intents are

% NO ONE wants to read code without comments; most of us can't and we
% rewrite it all from scratch

% Be nice to future users of the code (or yourself in a few weeks/months)
% and comment your code!

% can just evaluate something by writing it:
5;
pi % pi is a numerical constant for matlab

%
%%

x = 5; 
x = 4

% we created a variable x and set it to 5

% Matlab statements can end in semicolons (or not)
% if they end in semicolons, the display is suppessed
% if not, then the result is evaluated and displayed

% variable values can be updated with =

x = 3; % now x is 3

%
%%
% if-statement: if, elseif, else, and end
if x < 2
    disp('less than 2') % disp prints to the console window
elseif (2 <= x) && (x < 5)
    disp('less than 5, greater than or equal to 2')
elseif x==3 % previous case has covered the value for x - not considered
    disp('3')
else
    disp('something else')
end

% we use && to denote logical AND, and || to denote logical OR
% if statements need to end with an end

% general comparison operators:
% == (equal to), ~= (not equal to), <, >
% <=, >=

%%
% Matlab is very loosely typed: we don't specify variable types
% and a variable can easily change type out of the blue

x = (7 > 6) % now x is a logical (bool)

x = 'cat' % now x is a string

%%
% to compare strings, we use strcmp, true if a match, otherwise false
if strcmp(x,'cat') || strcmp(x,'kitten')
    disp('awww') % disp displays a value/variable to the console
end
%%

% to concatenate strings, we use strcat
y = strcat(x, ' says', ' meow', num2str(10));
disp(y)
%%
% for loops... also have end!

for i = 1:10 % i goes from 1 to 10 in steps of 1 (by default)
    i
end

for j = 3:4:17 % j goes from 3 to 17 in steps of 4
    j
end

%%
% while loops

num = 123.456;
while num > 22.8
    disp(num)
    num = num/2;
end
%%
% clear the console
clc

%
x

%%

% clear the workspace
clear

x

%%
% obtain user input
prompt = 'what''s your favourite number?'; % '' makes a quote in a string
favNum = input(prompt); % input function displays its argument and extracts 
  % user input

sprintf('I like %d, too.', favNum)

%%

% sprintf to write to console: no semicolon
% sprintf actually makes a string that we are evaluating

% Write text as first argument. Any place where a variable should
% go, specify its format %d, for integers. Then after the text, list each
% variable in the order it should be inserted into the text.

prompt = 'what''s your name? ';
name = input(prompt,'s'); % to collect a string of text

sprintf('Nice to meet you, %s', name)

% there are lots of options for formatting
% we use %d, %e, and %f for floats where
% 0.xd says how many digits to print

sprintf('%0.7f %0.2f',pi, exp(1))

%%
% we can create a row vector
v = [1 2 3 4, 5, 6]; % commas are optional

% we can create a column vecetor
v2 = [1; 2; 3; 4]; % semicolons for column vectors

% or use vertical spacing

v3 = [4
    5
    6
    7];
%%

% the ' denotes (conjugate) transpose

v2 = v2'

[1+1i 2-3i]'

%%

% construct a matrix by writing it
A = [1 2 3; 4 5 6];


% or by concatenting vectors
col1 = [1; 0; 0];
col2 = [0; 2; 0];

row1 = [9 8 7];
row2 = [6 5 4];

B = [col1 col2];

C = [row1; row2];


%%

% create a vector of given length: first argument = #rows, second = #cols

x = zeros(5, 1) % 5 x 1 vector of 0's
y = ones(6,1) % 6 x 1 vector of 1's

%%

% create a matrix
A = zeros(3) % a 3x3 matrix of 0's
B = ones(4) % a 4x4 matrix of 1's

%%

% create a sparse matrix: useful if matrix is sparse (mostly 0's)

S = sparse(10,10); 
S(3,4) = 7; 
S(9,9) = 100;

% to bring up a figure, we can give it a number to reference and call
% figure(somenumber)

figure(1) % now the next thing we plot will go here


%%
spy(S); % show nonzero pattern of S

% create a sprase vector
v = sparse(100,1);


%%

% Never invert a matrix: use backslash!

A = [1 2; 3 4]
b = [5; 6]

% solve Ax = b ==> x = A^(-1) b

x = A\b; % numerically solves: way faster than inverting for large matrices

x

%%

% to add or subract, dimension should agree
x = randi(10, 1, 10) % 5 x 1 random vector with integer entries 1-10
y = randi(10, 1, 10)

%%

% can add/subtract elementwise
x+y

x-y

% can multiply/divide/exponentiate elementwise but use .

mult = x.*y

x./y

x.^3 % elementwise power of 3

%%

% can logically index a vector: element at a given index is 0 if its truth
% value is false and 1 if true

range25To75 = logical( (mult >= 25).*(mult <= 75) )

% then list elements 25 to 75 inclusive

elementsInRange = mult( range25To75 )

% or just find their sum

sum ( mult( range25To75 ) ) % sum function will sum a vector

%%

% create a mesh

N = 5;
x = linspace(0,1); % defaults to 100 points

y = linspace(4,8,N) % has N points

%%

% indexing begins at 1, not 0 like other languages
% end denotes last element

x(1)
x(end)
x(end-1)


%%
% can plot stuff

x = linspace(0,4*pi);
y = sin(x); % will be evaluated elementwise

figure(1)
plot(x,y);

%%

% can make plots more fancy

% change plot range

figure(2)
plot(x,y,'m.'); % color and plot type

axis([0 pi/2 0 1]) % x range 0 to pi/2, y range 0 to 1

xlabel('\theta values') % accepts some tex commands
ylabel('y values')

title('plot of sin \theta')

% look up extra commands like LineWidth, fontSize, etc.
% can generate awesome plots automatically

%%
% close all plots
close all

%%

% save everything in the workspace

% .mat files store the data in a format for matlab
% .m files store matlab source code

save stuff.mat

% only save select variables

save selected.mat x y

%%

clc % clears the console
clear % clears all variables

%%

% load data back

load selected.mat

whos % lists variables in worskspace

why % just for fun - can be useful in debugging

%%

% there is a symbolic toolkit. not as good as Mathematica or Maple

% look it up; it could be useful


%%

% now we look at some functions

% store anonymous function as variable

foo = @(x) x.^2; % foo takes input x and squares it

foo(3)
foo([9 4])


%%

% Consier m y'' + gamma y' + k y = f(t)
% or y'' + a y' + by = g(t)
% with y(0) = 0.4, y'(0) = 0.1, a = 0, b = 10, g(t) = sin(sqrt(10) t)

a = 0;
b = 10;

g = @(t) sin(sqrt(10)*t); % RHS is anonymous function stored as g

% Make this into first order system
% u = y
% v = y'

% u' = v
% v' = y'' = - ay' - by + g = - a v - bu + g

% x = [u v] represents the position and velocity vector
dxdt = @(t,x) [x(2); -a*x(2) - b*x(1) + g(t)];

% it can evaluate vector functions, too
dxdt(0.25, [1,2])

%%

% set up initial conditions
x0 = [0.4; 0.1]; % = [y(0) y'(0)]

% determine how long to solve the ODE for
Tspan = [0 20]; % time spans from 0 to 20

% Matlab has many built-in ODE solvers such as ode45

% ode45 takes derivative input, time span, and initial conditions
[tout, xout] = ode45(  dxdt, Tspan, x0);

% the outputs store the data for plotting/analyzing the solution
% tout stores the list of discrete time values
% xout stores the solution [u v] in columns

% the : denotes all rows or all columns
% xout(:,1) = means all rows in the 1 column
% xout(:,2) = all rows in the 2 column

figure(1)
plot(tout, xout(:,1)) % the position
figure(2)
plot(tout, xout(:,2)) % the velocity

%%

% can also pass a function defined in separate file (same workspace!)

% consider y' = y
% and we are "shooting" for y(0) such that y(1) = e

initialConditions = linspace(0,2,1000);

yAtOne = []; % to store the vaues y(1)

for i=1:1000
   % solve the ODE on [0,1]
   [tout, yout] = ode45( @derivative, [0 1], initialConditions(i) ); 
   yAtOne = [yAtOne; yout(end)]; % end = value at last time  
end



errors = (yAtOne - exp(1)).^2; % errors always positive

[minerr minindex] = min(errors);

% ...'s can split apart a line - easier to read!
sprintf('The best initial condition is y(0) = %0.5f', ...
    initialConditions(minindex))

%%

% it works for math, too
x = -(7 + sqrt(7*7-4*1*2)) ...
    ./(2*1);

%%

% to write to a file use fprintf

fileOut = fopen('out.txt', 'w'); % open file stream for writing

for i=1:10 % \n = newline, \t = tab
    fprintf(fileOut, 'x = %i\t y=%0.2f\n', i, exp(i));
end

fclose( fileOut );

%%

% read from file
fileIn = fopen('toread.txt');
C = textscan(fileIn,'%s %d'); % C is a cell array
fclose(fileIn);

C

%%
A = imread('colorcat', 'jpg'); % to read the image, give name and file format

figure(2)
imshow(A) % imshow displays an image

size(A)

%%

B = (A(:,:,2) > 200); % all rows and columns where 2nd color value > 200

imshow(B)

imwrite(B,'nocolorcat.tiff','tiff'); % write B to file

%%

% solve u_t = u_xx, u(0) = u(1) = 0, u(x,0) = x(1-x)

a = 0;
b = 1;

Nx = 1000; % total number of mesh points
h = (b-a)/(Nx-1); % the spacing between mesh points

x = linspace(a,b,Nx); % mesh

Tend = 1; %time to stop sims
Nt = 1000; % mesh in time
dt = Tend/Nt;

u = x.*(1-x); % set up initial conditions
u = u'; % make col vec

% With fixed boudnary conditions, only need Nx-2 unknowns
e = ones(Nx-2,1); % ones vector
D2 = 1/h^2 * spdiags( [e -2*e e], -1:1, Nx-2, Nx-2); % finite diff matrix

% ( u(t+dt) - u(t) = dt*D2 u(t+dt)
% u(t+dt) = (I - dt D2)\u

I = speye(Nx-2); % identity matrix

t = 0; % current time
count = 0; % how many steps have been made

while(t < Tend)
    if( rem(count,10) == 0) % only plot every 10th figure
        figure(1)
        plot(x,u);
        legend(strcat( 'Time = ', num2str(t)) );
        drawnow % command updates plot
    end
    
    u(2:end-1) = (I - dt*D2)\u(2:end-1); % update interior of u
    t = t+dt;
    count = count+1;
end
