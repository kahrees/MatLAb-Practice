function result = blur(img, w)
 imgD = double(img); % We convert to allow calculations
 [row, col] = size(img);
 subM = (2*w)+1;
 newM = zeros(row, col);
 % traverse the image pixel by pixle and blur via the mean
 % of surrounding pixels. 
 for r = 1:row
     for c = 1:col
        before = r - fix(subM/2);
        after  = r + fix(subM/2);
        up     = c - fix(subM/2);
        down   = c + fix(subM/2);
        
        % check bounds for above positions
        if before < 1
            before = 1;
        end
        if after > row
            after = row;
        end 
        if up < 1
            up = 1;
        end
        if down > col
            down = col;
        end 
        tempM = imgD((before:after), (up:down));
        % Average the temporary matrix
        newM(r,c) = mean(tempM(:));
     end 
 end 
 result = uint8(newM);
end 