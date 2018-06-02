a = [12,54,34,55,23];
%冒泡排序
for i = 1:length(a)-1
    % i 定义每一轮比较到倒数第几个数
    for j = 1:length(a)-i
        %向后沉淀小数值
        if( a(j) < a(j+1) ) 
            temp = a(j+1);
            a(j+1) = a(j);
            a(j) = temp;
        end
    end
end
a

b = [23,14,78,47,8,11,52];
%插入排序
for current = 2:length(b)
    curNum = b(current);
    rightPosition = current;
    %查找正确位置
    for position = 1:current-1
        if curNum >= b(position)
            rightPosition = position;
            break;
        end
    end
    %后移
    tempArr = (rightPosition+1:current);
    for i=tempArr(end:-1:1) %倒序tempArr
        b(i) = b(i-1);
    end
    %插入位置
    b(rightPosition) = curNum;
end

b
    
    
    
    
    
    
