%% Wise Old Owl Project
%Information
%Check each Question for a Question mark, if there is none, say "ERROR, No Q, Try Again"
%So the program exits and restarts
%% YES or NO code
% If yes MyArduino.writeDigitalPin('D2',1) MyArduino.writeDigitalPin('D12',0)
% If no MyArduino.writeDigitalPin('D12',1) MyArduino.writeDigitalPin('D2',0)

%% The Game
clear;clc;
MyArduino=arduino;



fprintf('Dearest User, Welcome to the Wise Old Owl Game \n\n'); 
fprintf('Our Wise Old Owl Only Answers Yes or No Questions \n');
fprintf('You only get three questions and she gets three questions in return \n')
fprintf('Remember! Punctuation! \n\n')

for k = 1:3
      
  
Your_Question = input('Ask Wisely: ', 's')

gr = length(Your_Question); %The last character in Your uestion 
grs = Your_Question(gr); %Gets what the last character is  
tf = strcmp(grs,'?'); %Comapres the last character to '?'

if tf == 1
       disp('The Owl is consulting her wisdom. Please be patient')
       
       for w = 1:25
   MyArduino.writeDigitalPin('D12',1)
   MyArduino.writeDigitalPin('D2',0)
   pause(0.1)
   MyArduino.writeDigitalPin('D12',0)
   MyArduino.writeDigitalPin('D2',1)
   pause(0.)
       end
   MyArduino.writeDigitalPin('D2',0)
 
fprintf('Note: \n Yellow Light On means Yes \n Red Light On means No \n')   
fprintf('The Wise Old Owl has made a decision.\n')

    
   r = rand;
   if r <= 0.5
       MyArduino.writeDigitalPin('D2',1)
       MyArduino.writeDigitalPin('D12',0)
       fprintf('Yes \n\n')
       pause(3)
       
   elseif r > 0.5
       MyArduino.writeDigitalPin('D2',0)
       MyArduino.writeDigitalPin('D12',1)
       fprintf('No \n\n')
      pause(3)
   end    
   
   
    else
        disp('Dear user, you have no question mark')
        disp('You did not ask a question')
        disp('Please try again')
        break;
end    
   



 
   

pause(5)
   
   MyArduino.writeDigitalPin('D2',0)
   MyArduino.writeDigitalPin('D12',0)
   

 %The Owl's Turn
fprintf('It is now Madame Wise Old Owl''s Turn to request an answer from you\n\n')

fprintf('Count yourself lucky that she will only request YES/NO answers from you\n')
fprintf('To reply to Madame, press the button upon the circuit provided\n\n')

fprintf('To answer ''No'', leave the switch be and type ''0'' when prompted\n')
fprintf('To answer ''Yes'', press upon the switch and type ''1'' when prompted\n\n')

fprintf('Madame Wise Old Owl will now ask her question: \n')


x=randi([1,10],1);

   switch(x)
   case 1 
      fprintf('Do you love me?\n' )
   case 2 
      fprintf('Have you ever watched My Fair Lady?\n' )
   case 3 
      fprintf('Have you ever cheated on a test?\n' )
   case 4
      fprintf('Have you ever picked your nose in public? \n' )
   case 5
      fprintf('Are Friends Electric?\n' )
    case 6
      fprintf('Can You Feel the Love Tonight?\n' )
    case 7
      fprintf('Could You Have Danced All Night?!\n' )
    case 8
      fprintf('Would you live on Mars?\n' )
    case 9 
      fprintf('Should I take a nap?\n' )
    case 10 
      fprintf('Should I dye my hair? \n\n')
   end


Answer = input('What is your answer? ')


MyArduino.configurePin('D8','pullup');
p = MyArduino.readDigitalPin('D8');
if p == 0 && Answer == 1
disp('You said Yes')

elseif p == 1
    disp ('You said No')
    
 else
        disp('Dear user, you have no question mark')
        disp('You did not ask a question')
        disp('Please try again')
        break;    
end


    q = rand;
    
     if q <= 0.5
  
       fprintf('Madame is pleased with your answer  \n\n')
       pause(3)
       
   elseif q > 0.5
      
       fprintf('Madame is displeased with your answer  \n\n')
      pause(3)
    end    
end
 

fprintf('This is the end of the game \n Thank you!')


