%Conversion of a decimal number to Binary,octal and hexadecimal form
%Conversion to binary form
num = input('Enter the number');
num1 = num;
num2 = num;
bb = ' '; %Introduce a string to store binary number
while num>=2
    fact = floor(num/2);
    remainder = rem(num,2);
    bb = [bb num2str(remainder)];
    num = fact;
end
bb = [bb num2str(num)];
%reversing the string
i = 1;
j = strlength(bb);
while(i<j)
    temp = bb(j);
    bb(j) = bb(i);
    bb(i) = temp;
    i = i+1;
    j = j-1;
end
bb = str2num(bb);
fprintf('The Binary representation of the given decimal number is %d\n',bb)
%code to convert the same decimal number to octal form

aa = ' '; %Introduce a string to store binary number
while num1>=8
    fact1 = floor(num1/8);
    remainder1 = rem(num1,8);
    aa = [aa num2str(remainder1)];
    num1 = fact1;
end
aa = [aa num2str(num1)];
%reversing the string
i = 1;
j = strlength(aa);
while(i<j)
    temp = aa(j);
    aa(j) = aa(i);
    aa(i) = temp;
    i = i+1;
    j = j-1;
end
aa = str2num(aa);
fprintf('The Octal representation of the given decimal number is %d\n',aa)

%code to convert a decimal number to hexadecimal form
output = ' ';
fact2 = num2;
%hexadecimal representation of 0 is 0
if fact2 ==0
    fprintf('The hexadecimal representation of the given decimal number is %d\n',0);
else
    gg = 'ABCDEF';
    while fact2>0
        num2 = rem(fact2,16);
        for i = 10:15
            if (num2==i)
                num2 = gg(i-10+1);
            end
        end
        
        output = [output num2str(num2)];
        fact2 = floor(fact2/16);
    end
output = flip(output);
fprintf('The hexadecimal representation of the given decimal number is %s\n',output)
end

        