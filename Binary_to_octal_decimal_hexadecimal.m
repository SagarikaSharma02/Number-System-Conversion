%Code to convert a Binary number to octal,decimal and hexadecimal form
num = input('Enter a integer binary number');
num1 = num;

output = ' ';
if num<2
    octal_value = num;
end

temp = num;
while(temp>=10)
    base =1;
    octal_value = 0;
    last_digit = mod(temp,1000);%extracting the last 3 digits
    while (last_digit>=10)
        last_digit1 = mod(last_digit,10);
        temp1 = floor(last_digit/10);
        last_digit = temp1;
        if last_digit1==0 || last_digit1==1
            %Multiplying the last_digit1 with appropriate base value and 
            %adding it to octal_value
            octal_value = octal_value + last_digit1*base;
        else
            sprintf('Not binary format')
        end
        base = base*2;
    end
    if last_digit<10
        octal_value = octal_value+last_digit*base;
    end
    output = [output num2str(octal_value)];
    temp = floor(temp/1000);
end
if temp<10
    output = [output num2str(temp)];
end
    

output = flip(output);
output = str2num(output);
fprintf('The octal representation of the given binary number is %d\n',output)

%code to convert a Binary number to decimal form

dec_value = 0; %to store decimal number
if num1<2
    dec_value = num1;
end

base = 1; %Initializing the base value to 1
temp1 = num1;
while(temp1>=10)
    last_digit = mod(temp1,10);%exracting the last digit
    temp1 = floor(temp1/10);
    if last_digit==0 || last_digit==1
        %Multiplying the last digit with appropriate base value and
        %adding it to dec_value
        dec_value = dec_value + last_digit*base;
    else
        sprintf('Not binary format')
    end
    base = base*2;
    if temp1<10
        dec_value = dec_value + temp1*base;
    end
end
 fprintf('The decimal representation of the given binary number is %d\n',dec_value)
 
 %code to convert a binary number to hexadecimal form

output = ' ';
gg = 'ABCDEF';
if num1<2
    hexadecimal_value = num1;
end

temp = num1;
while(temp>=10)
    base =1;
    hexadecimal_value = 0;
    last_digit = mod(temp,10000);%extracting the last 4 digits
    while (last_digit>=10)
        last_digit1 = mod(last_digit,10);
        temp1 = floor(last_digit/10);
        last_digit = temp1;
        if last_digit1==0 || last_digit1==1
            %Multiplying the last_digit1 with appropriate base value and 
            %adding it to octal_value
            hexadecimal_value = hexadecimal_value + last_digit1*base;
        else
            sprintf('Not binary format')
        end
        base = base*2;
    end
    if last_digit<10
        hexadecimal_value = hexadecimal_value+last_digit*base;
    end
    for i = 10:15
        if( hexadecimal_value==i)
            hexadecimal_value = gg(i-10+1);
        end
    end
    output = [output num2str(hexadecimal_value)];
    temp = floor(temp/10000);
end
if temp<10
    output = [output num2str(temp)];
end
output = flip(output);
fprintf('The Hexadecimal representation of the given binary number is %s\n',output)

         

         
