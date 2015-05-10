function [ const_weights, pair_rank, single_rank] = calc_const_weights()

% the const_weights is 33x33 matrix that contains all possible key pair sequence. There are 33 keys, where the first 30 keys
% represent the 3x10 keys of the keyboard buttons (leaving [ ] ' buttons) to have regular shape in the calculations.
% the code calculates the upper half (above the diagonal) of the const_weights matrix in three parts (marked 1, 2, and 3) as follows:
% 1 2 3 ..... 29 30 31 32 33  
% 1 1 1 ..... 1  1  2  2  2
% 2   1 ..... 1  1  2  2  2  
% .
% .
% .
% .
% .
% 29          1  1  2  2  2
% 30             1  2  2  2
% 31                3  3  3 
% 32                   3  3
% 33                      3

% important: the variables 'row' and 'col' represents the rows and columns in the const_weights matrix 

% the code structure is as follow
% for row = 1:33
%   if row <= 30
%      for col = row:33
%      if col <= 30
%      ***case 1***
%      else (col > 30)
%      ***case 2***
%      end
%   else (row > 30)
%      for col = row:33
%      ***case 3***
%      end
%   end
% end



% EVENT                                         POINT AWARDED
%-------------------------------------------------------
% h: Hand alternation (yes, no)                 1,0
%-------------------------------------------------------
% r: # of rows transision (if same hand)        0,1,2
%-------------------------------------------------------
% f: distance of finger columns in same hand    0,1,2,3,4,5
%-------------------------------------------------------
% R = sum:
% Home row                                      1
% Upper row                                     2
% Lower row                                     3
%-------------------------------------------------------
% F = sum:
% Using the Pinky Finger                        4.5
% Using the First Finger                        4.5
% Using the Ring Finger                         1
% Using the Index Finger                        2
% Using the Thumb Finger                        3
%
% parameters in the pair_rank (1) # hand alternations,2) # 1 row transitions, 3) # 2 rows transitions,
% 4) # 1 finger transitions, 5) # 2 fingers transitions,6) # 3 fingers transitions,7) # 4 fingers transitions)

% parameters in the single_rank(1) # upper row,2) # home row,3) # bottom row, 4) # pinky,5) # ring,6) # middle,7) # index,
% 8) # right hand,9) # left hand)

time = 0;

% factors:
a = 185.8;
% b0 = -0.013;
b1 = -40;
b2 = 18.3;
b3 = -11;
b4 = 0.514;
b5 = 1.07;

% chro = pop_pool(ind,:);
% chro_time = 0;
const_weights = zeros(33,33);
pair_rank = zeros(33,33,7);
single_rank = zeros(33,9);

for row = 1:33
    if row <= 30
        % fingers usage
        F_a = row - floor((row-1)/10)*10;
        if F_a > 5
            F_a = 11 - F_a;
        end
        switch F_a
            case 1
                % pinky
                single_rank(row, 4) = single_rank(row, 4) + 1;
                finger1_waight = 4.5;
            case 2
                % ring
                single_rank(row, 5) = single_rank(row, 5) + 1;
                finger1_waight = 4.5;
            case 3
                % middle
                single_rank(row, 6) = single_rank(row, 6) + 1;
                finger1_waight = 1;
            case 4
                % index
                single_rank(row, 7) = single_rank(row, 7) + 1;
                finger1_waight = 2;
            case 5
                % index
                single_rank(row, 7) = single_rank(row, 7) + 1;
                finger1_waight = 3;
        end

        % rows usage
        R_a = ceil(row/10);
        switch R_a
            case 1
                % upper row
                single_rank(row, 1) = single_rank(row, 1) + 1;
                finger1_row_waight = 2;
            case 2
                % home row
                single_rank(row, 2) = single_rank(row, 2) + 1;
                finger1_row_waight = 1;
            case 3
                % bottom row
                single_rank(row, 3) = single_rank(row, 3) + 1;
                finger1_row_waight = 3;
            otherwise
        end

        % hands usage
        H_a = fix(ceil(row/5)/2) == (ceil(row/5)/2);
        if H_a
            % right hand
            single_rank(row, 8) = single_rank(row, 8) + 1;
        else
            % left hand
            single_rank(row, 9) = single_rank(row, 9) + 1;
        end


        for col = row:33
            if col<=30
                pair_time = a; % initialize the time of the pair

                % fingers usage
                F_a = col - floor((col-1)/10)*10;
                if F_a > 5
                    F_a = 11 - F_a;
                end
                switch F_a
                    case 1
                        % pinky
                        pair_time = pair_time + b5 * (finger1_waight + 4.5);
                    case 2
                        % ring
                        pair_time = pair_time + b5 * (finger1_waight + 4.5);
                    case 3
                        % middle
                        pair_time = pair_time + b5 * (finger1_waight + 1);
                    case 4
                        % index
                        pair_time = pair_time + b5 * (finger1_waight + 2);
                    case 5
                        % index
                        pair_time = pair_time + b5 * (finger1_waight + 3);
                end

                % rows usage
                R_a = ceil(col/10);
                switch R_a
                    case 1
                        % upper row
                        pair_time = pair_time + b4 * (finger1_row_waight + 2);
                    case 2
                        % home row
                        pair_time = pair_time + b4 * (finger1_row_waight + 1);
                    case 3
                        % bottom row
                        pair_time = pair_time + b4 * (finger1_row_waight + 3);
                    otherwise
                end

                % hand alternation test
                h_a = fix(ceil(col/5)/2) == (ceil(col/5)/2);
                h_b = fix(ceil(row/5)/2) == (ceil(row/5)/2);
                if xor(h_a, h_b) % hand alternation
                    pair_rank(row, col, 1) = pair_rank(row, col, 1) + 1;
                    pair_time = pair_time + b1;

                else % no hand alternation

                    % row transition
                    r_a = abs(ceil(col/10) - ceil(row/10));
                    switch r_a
                        case 1
                            % 1 row transition
                            pair_rank(row, col, 2) = pair_rank(row, col, 2) + 1;
                        case 2
                            % 2 rows transition
                            pair_rank(row, col, 3) = pair_rank(row, col, 3) + 1;
                    end
                    pair_time = pair_time + b2 * r_a;

                    % finger transition
                    f_a = abs(mod(col,5) - mod(row,5));
                    switch f_a
                        case 1
                            % 1 finger transitions
                            pair_rank(row, col, 4) = pair_rank(row, col, 4) + 1;
                        case 2
                            % 2 fingers transitions
                            pair_rank(row, col, 5) = pair_rank(row, col, 5) + 1;
                        case 3
                            % 3 finger transitions
                            pair_rank(row, col, 6) = pair_rank(row, col, 6) + 1;
                        case 4
                            % 4 finger transitions
                            pair_rank(row, col, 7) = pair_rank(row, col, 7) + 1;
                    end
                    pair_time = pair_time + b3 * f_a;

                end

                const_weights(row,col) = pair_time;
            else %col > 30
                pair_time = a; % initialize the time of the pair

                % fingers usage
                % pinky
                pair_time = pair_time + b5 * (finger1_waight + 4.5);
                
                % rows usage
                switch col
                    case 31
                        % upper row
                        pair_time = pair_time + b4 * (finger1_row_waight + 2);
                    case 32
                        % upper row
                        pair_time = pair_time + b4 * (finger1_row_waight + 2);
                    case 33
                        % home row
                        pair_time = pair_time + b4 * (finger1_row_waight + 1);
                end
                
                % hand alternation test
                h_a = 1; % right hand
                h_b = fix(ceil(row/5)/2) == (ceil(row/5)/2);
                if xor(h_a, h_b) % hand alternation
                    pair_rank(row, col, 1) = pair_rank(row, col, 1) + 1;
                    pair_time = pair_time + b1;

                else % no hand alternation

                    % row transition
                    switch col
                        case 31 % first row
                            r_a = abs(1 - ceil(row/10));
                        case 32 % first row
                            r_a = abs(1 - ceil(row/10));
                        case 33 % second row
                            r_a = abs(2 - ceil(row/10));
                    end
                    switch r_a
                        case 1
                            % 1 row transition
                            pair_rank(row, col, 2) = pair_rank(row, col, 2) + 1;
                        case 2
                            % 2 rows transition
                            pair_rank(row, col, 3) = pair_rank(row, col, 3) + 1;
                    end
                    pair_time = pair_time + b2 * r_a;

                    % finger transition                    
                    switch col
                      case 31 % first row
                        f_a = abs(mod(col,5) - mod(row,5));
                      case 32 % first row
                        f_a = abs(mod(col,5) - mod(row,5));
                      case 33 % second row
                        f_a = abs(mod(col,5) - mod(row,5));
                    end
                    switch f_a
                      case 1
                          % 1 finger transitions
                          pair_rank(row, col, 4) = pair_rank(row, col, 4) + 1;
                      case 2
                          % 2 fingers transitions
                          pair_rank(row, col, 5) = pair_rank(row, col, 5) + 1;
                      case 3
                          % 3 finger transitions
                          pair_rank(row, col, 6) = pair_rank(row, col, 6) + 1;
                      case 4
                          % 4 finger transitions
                          pair_rank(row, col, 7) = pair_rank(row, col, 7) + 1;
                    end
                    pair_time = pair_time + b3 * f_a;
% 
                end

                const_weights(row,col) = pair_time;
            end
        end
    else % row >30
        single_rank(row, 4) = single_rank(row, 4) + 1; % pinky
        single_rank(row, 8) = single_rank(row, 8) + 1; % right hand
        switch row % row at the KB 
            case 31
                single_rank(row, 1) = single_rank(row, 1) + 1;
            case 32
                single_rank(row, 1) = single_rank(row, 1) + 1;
            case 33
                single_rank(row, 2) = single_rank(row, 1) + 1;
        end
        
        for col = row:33
            if row == 31
               if col == 31
                   const_weights(row,col) = a + b4*4 + b5*9;
               end
               if col == 32
                   pair_rank(row, col, 4) = pair_rank(row, col, 4) + 1; % i finger transition
                   const_weights(row,col) = a + b3*1 + b4*4 + b5*9;
               end
               if col == 33
                   pair_rank(row, col, 2) = pair_rank(row, col, 2) + 1; % 1 row transition
                   const_weights(row,col) = a + b2*1 + b4*3 + b5*9;
               end
            end
            
            if row == 32
                if col == 32
                    const_weights(row,col) = a + b4*4 + b5*9;
               end
               if col == 33
                   pair_rank(row, col, 4) = pair_rank(row, col, 4) + 1; % 1 finger transition
                   pair_rank(row, col, 2) = pair_rank(row, col, 2) + 1; % 1 row transition                   
                   const_weights(row,col) = a + b2*1 + b3*1 + b4*3 + b5*9;
               end
            end
            
            if row == 33
                if col ==33
                    const_weights(row,col) = a + b4*2 + b5*9;
                end
            end
            
%             if col == 34
%                 const_weights(row,col) = a + b1*1 + b4* + b5*;
%             end
        end
    end
end

% fill the lower half of the matrix
for i = 2:33
  for j = 1:i
    const_weights(i,j) = const_weights(j,i);
  end
end



