a = [12,54,34,55,23];
%ð������
for i = 1:length(a)-1
    % i ����ÿһ�ֱȽϵ������ڼ�����
    for j = 1:length(a)-i
        %������С��ֵ
        if( a(j) < a(j+1) ) 
            temp = a(j+1);
            a(j+1) = a(j);
            a(j) = temp;
        end
    end
end
a

b = [23,14,78,47,8,11,52];
%��������
for current = 2:length(b)
    curNum = b(current);
    rightPosition = current;
    %������ȷλ��
    for position = 1:current-1
        if curNum >= b(position)
            rightPosition = position;
            break;
        end
    end
    %����
    tempArr = (rightPosition+1:current);
    for i=tempArr(end:-1:1) %����tempArr
        b(i) = b(i-1);
    end
    %����λ��
    b(rightPosition) = curNum;
end

b
    
    
    
    
    
    
