
[matlab文档](https://ww2.mathworks.cn/help/matlab/getting-started-with-matlab.html)

[octave文档](https://octave.org/doc/v5.2.0/)


* 支持基本的数学运算
* 支持基本的逻辑运算
* `%`为注释
* `~=`不等于
* 语句后有`;`就不会直接打印
* `pwd`路径
* `who`当前工作空间中的所有变量
* `whos`比`who`详尽一点
* `clear`删除所有变量
* `clear xx`删除某变量
* `exit`或`quit`退出
* `disp`打印
* `A'`或`transpose()`矩阵倒置即$A^T$
* `pinv(A)`逆矩阵(也就是$A^{-1}$)

# 矩阵
```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]
%{
A =
    1    2    3
    4    5    6
    7    8    9
   10   11   12
%}
```

# 矢量(vector)
```matlab
v = [1;2;3] 
%{
v =
   1
   2
   3
%}
```

# 递增步长矩阵
```matlab
a = 1:1:10
%{
a =

    1    2    3    4    5    6    7    8    9   10
%}
```

```matlab
a = 1:6
%{
a =

   1   2   3   4   5   6
%}
```

# 快速生成矩阵
```matlab
ones(2,3)
%{
ans =

   1   1   1
   1   1   1
%}

c = 2*ones(2,3)
%{
c =

   2   2   2
   2   2   2
%}

zeros(1,3)
%{
ans =

   0   0   0
%}

rand(3,3)
%{
ans =

   0.91744   0.66250   0.12962
   0.70745   0.14938   0.25047
   0.55218   0.81351   0.52511
%}


w = randn(1,3) %高斯随机变量
%{
w =

   1.27890  -0.12629   0.69537
%}
```

# 画图
`hist`柱状图
`plot`曲线图
`hold on` 保存上次的制图
`xlabel`,`ylabel`标记图xy轴
`legend`图标志
`title`图标题
`print -dpng 'myPlog.png'`将图保存为png图片
`figure`创造不同的图窗口
`close`关闭
`subplot` 在同一个窗口创建更多单独的坐标轴
`axis` 改变坐标轴
`clf`清除图层
`imagesc`图块图
`colorbar`,`colormap`设置图块图的颜色

```matlab
w = -6+sqrt(10)*(randn(1,100));
hist(w)
hist(w,10)
```

# help
```matlab
eye(4)
%{
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1
%}

help eye
%{
܀'eye' is a built-in function from the file libinterp/corefcn/data.cc

 -- eye (N)
 -- eye (M, N)
 -- eye ([M N])
 -- eye (..., CLASS)
...
%}
```

# 获取矩阵大小/规模
```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]
%{
A =
    1    2    3
    4    5    6
    7    8    9
   10   11   12
%}

length(A)
%{
ans =  4
%}

[m,n] = size(A)
%{
m =  4
n =  3
%}

dim_A = size(A)
%{
dim_A =
   4   3
%}

dim_v = size(v)
%{
dim_v =
   3   1
%}



```

# 读取/操作矩阵
```matlab
A=[1,2;3,4;5,6]
%{
A =

   1   2
   3   4
   5   6
%}

A_23 = A(2,3)
%{
A_23 =  6
%}

A(2,:)
%{
ans =

   3   4
%}

A(:,2)
%{
ans =

   2
   4
   6
%}

A([1,3],:)
%{
ans =

   1   2
   5   6
%}

A(:,2)=[10;11;12]
%{
A =

    1   10
    3   11
    5   12
%}

A = [A,[1;2;3]]
%{
A =

    1   10    1
    3   11    2
    5   12    3
%}

A(:)
%{
ans =

    1
    3
    5
   10
   11
   12
    1
    2
    3
%}
```

```matlab
>> A = [1;2;3]
A =

   1
   2
   3

>> B = [4;5;6]
B =

   4
   5
   6

>> C = [A B] %[A,B]也一样
C =

   1   4
   2   5
   3   6

>> D = [A;B]
D =

   1
   2
   3
   4
   5
   6
```

```matlab
>> A = [16 2 3 13;5 11 10 8; 9 7 6 12;4 14 15 1]
A =

   16    2    3   13
    5   11   10    8
    9    7    6   12
    4   14   15    1

>> A(:,1:2)
ans =

   16    2
    5   11
    9    7
    4   14

>> A(1:4,1:2)
ans =

   16    2
    5   11
    9    7
    4   14
```


# 加载文件
加载后文件名为变量名
```matlab
load ex1data1.txt
load('ex1data1.txt') 
```

# 存储
```matlab
save  xx.mat yy %将`yy`变量存入`xx.mat`文件中

save hello.txt v -ascii
```

# 数学运算

* `.*n`矩阵里的每个数乘以n
* `*`矩阵相乘
* `.^n`矩阵内所有数的n次方
* `log(A)`矩阵内所有数的取对数
* `exp(A)`自然常数e为底的指数函数
* `abs(A)`绝对值
* `n ./ A`n除以矩阵内所有数(取倒数)
* `-`负值
* `>`或`<`大小判断
* `magic(n)`创建一个N乘N的魔方
* `sum(A)`求和
* `prod(A)`列乘积
* `floor(A)`向下取整
* `ceil(A)`向上取整
* `flipud`翻转矩阵


```matlab
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A'
ans =

   1   3   5
   2   4   6

>> B = [11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C = [1 1 ; 2 2]
C =

   1   1
   2   2

>> A * C
ans =

    5    5
   11   11
   17   17

>> D = A .* B
D =

   11   24
   39   56
   75   96

>> A .^2
ans =

    1    4
    9   16
   25   36

```

# find
找出满足条件的数,返的是索引
```matlab
>> A=magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> find(A>=7)
ans =

   1
   6
   8

>> [r,c]=find(A>=7)
r =

   1
   3
   2

c =

   1
   2
   3
```

# max
每列的最大值,`sum`与之类似
```matlab
>> A=magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> max(A)
ans =

   8   9   7

>> max(A(:))
ans =  9

>> max(A,[],1)
ans =

   8   9   7

>> max(A,[],2)
ans =

   8
   7
   9
```

# pinv
```matlab
ٰ>> A
A =

   8   1   6
   3   5   7
   4   9   2

>> B = pinv(A)
B =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778

>> A * B
ans =

   1.0000e+00  -1.2157e-14   6.3560e-15
   5.5511e-17   1.0000e+00  -1.5266e-16
  -5.9813e-15   1.2268e-14   1.0000e+00

```

# for
空格没有意义;每一个语句对一个`end;`结束语句;

```matlab
>> v = zeros(10,1)
v =

   0
   0
   0
   0
   0
   0
   0
   0
   0
   0

>> for i=1:10,
v(i)=2^i;
end;

>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> indices = 1:10;
>> indices
indices =

    1    2

>> for i =indices,disp(i);end;
 1
 2
 3
 4
 5
 6
 7
 8
 9
 10

```

# while
```matlab
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> i=1;
>> while i<=5,v(i)=100;i=i+1;end;
>> v
v =

    100
    100
    100
    100
    100
     64
    128
    256
    512
   1024

>> i=1;
>> while true,
v(i)=999;
i=i+1;
if i == 6,break;end;
end;
>> v
v =

    999
    999
    999
    999
    999
     64
    128
    256
    512
   1024
```

# if

```matlab
>> v
v =

    999
    999
    999
    999
    999
     64
    128
    256
    512
   1024

>> v(1)
ans =  999

>> v(1)=2;
>> if v(1)==1,disp('one');
elseif v(1)==2,disp('two');
else disp('three')
;end;
two
```

# function
进入文件目录可以直接使用相关的文件函数,不需要显式引入(load)

`addpath`可以增加Octave默认搜索路径,就不需要特地进入相关的目录路径了

```matlab
% squreThisNumber.m文件
function y = squreThisNumber(x)
y = x^2;

>> squreThisNumber(2)
ans =  4

>> squreAndCubeThisNumber(2)
ans =  4
>> [a,b] = squreAndCubeThisNumber(2)
a =  4
b =  8

>> x = [1 1;1 2;1 3]
x =

   1   1
   1   2
   1   3

>> y = [1;2;3]
y =

   1
   2
   3

>> theta = [0;1];
>> j = costFunctionJ(x,y,theta)
j = 0

>> theta = [0;0];
>> j = costFunctionJ(x,y,theta)
j =  2.3333
>>
```

