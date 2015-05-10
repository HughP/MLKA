  function [ freq single_freq] = build_freq()
  % this function opens two files single.csv and pair.csv, which contain the frequencies of single and pairs of characters
  % output:
  % 	freq: 33 X 33 matrix 
  
  indeces = (1:33)';
  
  single = dlmread('single.csv');  % from -> Inidvidual Occurences.csv
  
  single(:,2) = []; % remove the zeros column
  
 % sort according to the frequency decending
  [data ind] = sort(single(:,2)); 
  single = single(ind,:);
  single(end:-1:1,:) = single;
 
  single(1,:) = []; % remove the space frequency
  single(34:end,:) = []; % keep the most frequent 33 char
  
% sort according to the unicode
  [data ind] = sort(single(:,1));
  single = single(ind,:);       
  single_freq = single(:,2);
  
  
% Now for the pair frequencies
  
  pair = dlmread('pair.csv');      % from -> Letters and Specials Not Normalized with Real Spaces.csv
  
  pair(find(pair(:,1) == 32),:) = []; % remove spaces from first column
  pair(find(pair(:,2) == 32),:) = []; % remove spaces from second column

% sort according to the pair frequencies
  [data ind] = sort(pair(:,1));
  pair = pair(ind,:); 
  

 % map the first column unicode to indeces
  indeces = repmat(indeces,33,1);
  indeces = sort(indeces);
  pair(:,1) = indeces; 
  
% map the second column unicode to indeces
  [data ind] = sort(pair(:,2));
  pair = pair(ind,:); 
  pair(:,2) = indeces; 
  
% sort the data according to the first colummn
  [data ind] = sort(pair(:,1)); 
  pair = pair(ind,:); 
  
  freq = reshape(pair(:,3),33,33);
  freq = freq/sum(freq(:))*10^4;

  % tst = reshape(pair(:,2),33,33);




