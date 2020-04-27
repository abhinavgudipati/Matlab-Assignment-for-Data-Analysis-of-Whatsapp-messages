data = [0;1;6;4;7;4;8;4;7;4;7;2;1;0;7;8;4;6;7;8;9;11;24;5;34;2;3;4;9;3];
figure; %we use the figure function in matlab to display graphical outputs, 
% in this case, the graphical output is in the form of a histogram which we would like to use for this program 
histogram(data); hold on 
%histogram() function displays the histogram of the data taken as an argument inside
% the hold on is a function used to retain the current plot and certain 
% axes properties so that subsequent graphing commands add to the existing graph

y = fitdist(data,'Exponential'); %for this experiment 
% I have used the exponential density function to fit the data supplied above 

disp(y); % the disp() function used here basically displays the object we have assigned as y.
% y is an object assigned to the fitdist function in the above line, is
% made to display. We get the mu value or the mean value from the density
% function as used above.

data = sort(data); 
%here sort() function sorts the data in ascending order
cd = cdf(y,data);
%here we assign a an object cd to the cdf function taking two arguments as
%y and the sorted data respectively
plot(data,cd);
%plot function in Matlab is used to create a graphical representation of some data

mean_Value = y.mu;
%here we are assigning an object with the name mean_Value in order to get
%the mean value of the y object having the exponential density function

disp("The Expected value is:    " + mean_Value);
% we are displaying the expected value accordingly as per our requirement 

count = 0;
% here we are initiating a count as 0, in order to get the cdf value; what
% we are trying to do here is that we initiate a count starting from 0; and
% loop through all the sorted data; here we counting all the values which
% are strictly lesser than or equal to the mean value which we found above.
% from the count value, we also will be able to find the cdf value. 
for i=1:length(data)
    if data(i) <= mean_Value
        count=count+1;
    end
end

disp("CDF value is:    "+count/length(data));
%here we are displaying the cdf value by diving the count which we found in
%the above loop, and divide the count with respect to the number of
%elements of given data. 

heads= 0;
tails = 0;
% here we are initiatig the head count and the tail count accordingly to 0
% each in order to find the number of values respectively. According to the
% question the head count is incremented if index number of the data (D) is
% less than the mean value, if the index numebr of the data (D) is greater
% than the mean value then the tail count is incremented. 
D = [3;5;6;2;7;1;9;4;6;4];

for j=1:length(D)
    if D(j)<mean_Value
        heads = heads +1;
    else
        tails = tails +1;
    end
end

disp("head count is :" + head);
disp("tail count is :" + tail);

