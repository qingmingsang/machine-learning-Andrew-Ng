
# 代码环境部署
## MATLAB Online
[创建MathWorks帐户](https://www.mathworks.com/mwaccount/register)

[增加MATLAB Online许可证](https://www.mathworks.com/licensecenter/classroom/machine_learning/)

[MATLAB Online](https://matlab.mathworks.com/)

[matlab文档](https://ww2.mathworks.cn/help/matlab/)

## Octave
[安装](http://www.gnu.org/software/octave/)

[octave文档](https://octave.org/doc/v5.2.0/)

# 多变量线性回归
## 多种功能
带多变量的线性回归也被称为 "多变量线性回归"。

现在我们介绍一下方程的记法，在这里我们可以有任意数量的输入变量。

$$
x^{(i)}_j = 第i个训练实例中的特征j的值
$$

$$
x^{(i)} = 第i个训练实例的输入（特征）。
$$

$$
m = 训练实例数
$$

$$
n = 特征(功能)数
$$

适应这些多重特征的多变量假设函数形式如下：
$$
h_θ(x) = 
θ_0+θ_1x_1+θ_2x_2+θ_3x_3+⋯+θ_nx_n
$$

为了形成对这个函数的直观认识，我们可以把$θ_0$看作是房屋的基本价格，$θ_1$是每平方米的价格，$θ_2$是每层的价格，以此类推，$x_1$为房屋的平方米数，$x_2$为楼层数，等等。

利用矩阵乘法的定义，我们的多变量假设函数可以简明地表示为。

$$
h_θ(x) =
\begin{bmatrix} 
θ_0&θ_1&...&θ_n
\end{bmatrix}
\begin{bmatrix} 
x_0
\\ 
x_1
\\ 
...
\\ 
x_n
\end{bmatrix}
=θ^Tx
$$

这是我们对一个训练实例的假设函数的向量化。

假设$x_{0}^{(i)}  =1 for (i∈1,…,m)$
这样，我们就可以用`θ`和`x`进行矩阵运算。因此，使两个向量'`θ`'和'`x`'在元素上相互匹配（即元素数相同：`n+1`）。




