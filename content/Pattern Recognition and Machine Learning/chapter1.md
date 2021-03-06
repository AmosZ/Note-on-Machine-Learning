Title:Chapter 1
Date:2013-10-03

# 1.Introduction

<h2 id=introduction>1.Introduction</h2>
------------------------
**Training Set** : is used to tune the **parameters** of an adaptive model

- What about adaptive model? How to select adaptive model? 
- How to design or select an good adaptive model??

**Learning phase** : The precise form of the function(adaptive model) is determined during the training phase

**General Workflow**:

1. Preprocess:
	- Normalization : For example : transforming different size of pics to the same one
	- Reduction : Reduce dimension or quantity, to speed up comuputation. `How to reduce dimension/quantity while preserving the information in those data is not easy.`
2. Training
3. Test 
4. Output result

**Classification:**

- supervised learning : Training data comprise examples of the input vectors **along with** their corresponding target vectors
	- classification:decrete 
	- regression:continuous

- unsupervised learning : Training data consists a set of input vector x **without** any corresponding target value
	- cluster : to discover group of similar examples
	- density estimation : to determine the distribution of data within the input space.

- visualization : to project the data from a high-dimensional space down to two/three dimensions for the purpose of visualization. Data visualization is a hot field now. Is this can be used to preprocess data set,as mention in Reduction?

- reinforcement learning: finding suitable actions to take in a given situation in order to maximize a reward.
	Make a balance of exploration and exploitation
	- exploration : explore the unknow space.
	- exploitation : make use of the actions that are known to yield a high reward.

Do you remember PSO ???
<p align="center">
<img src=http://latex.codecogs.com/gif.latex?V%28t&plus;1%29%20%3D%20w*V%28t%29%20&plus;%20C_%7B1%7D*R_%7B1%7D*%28P%28t%29%20-%20X%28t%29%29%20&plus;%20C_%7B2%7D*R_%7B2%7D*%28G%28t%29%20-%20X%28t%29%29>
</p>

<p align="center">
<img src=http://latex.codecogs.com/gif.latex?X%28t&plus;1%29%20%3D%20X%28t%29%20&plus;%20V%28t&plus;1%29>
</p>
It also need a balance between **exploitation** and **exploration**. But it has a global attraction when particle explore the unknown space. It is lucky...

**Deep Learning** : a new branch of machine learning. [wikipedia][deep_learning]

# 2.Bayes' theorem

--------------------------------
<p align="center">
<img src=http://latex.codecogs.com/gif.latex?p%5C%28w%7CD%5C%29%20%3D%20%5Cfrac%7Bp%5C%28D%7Cw%5C%29p%5C%28w%5C%29%7D%7Bp%5C%28D%5C%29%7D>
</p>
Bayes' theorem can be used to 

1. convert a prior probability into a posterior probability by incorporating the evidence provided by the observed data. 
2. We can adopt a similar approach when making inferences about quantities such as the parameters w in the polynomial curve fitting example.(**????How???**)

Explanation

* p(w):the prior, is the initial degree of belief in w. 
* p(w|D):the posterior, is the degree of belief having accounted for D.
* p(D|w)/p(D): represents the support D provides for w.

In the Bayesian \(or epistemological\) interpretation, probability measures **a degree of belief**.

Conlusion on Bayes: 

- Bayes theorem coincides with the cognition of people to the world. After one observes a result, he/she will improve his/her assumption.所以如何用一种迭代的方式，不断更新poster probability?
- Bayesian methods based on poor choices of prior can give poor results with high confidence. 如何选择prior distribution也是个问题

## Problem:
### 1.What is likelihood function?
In statistics, a likelihood function is a **function of the parameters of a statistical model**.[wikipedia][Likelihood function]
The likelihood of a set of parameter values, w, given outcomes D, is equal to the probability of those observed outcomes given those parameter values

In statistics, a likelihood function (often simply the likelihood) is a **function of the parameters of a statistical model**.
We should understand the difference between **likelihood** and **probability**

* Probability is used when describing *a function of the outcome given a fixed parameter value*. For example, if a coin is flipped 10 times and it is a fair coin, what is the probability of it landing heads-up every time? 
* Likelihood is used when describing *a function of a parameter given an outcome*. For example, if a coin is flipped 10 times and it has landed heads-up 10 times, what is the likelihood that the coin is fair?

### 2.Why we should maximum likelihood function?
*Maximum-likelihood estimation* is a method of estimating the parameters of a statistical model.

In general, for 

* a fixed set of data and 
* underlying statistical model

the method of maximum likelihood selects the set of values of the model parameters that maximizes the likelihood function
Intuitively, this maximizes the "agreement" of the selected model with the observed data

本质上，这里的maximize the aggreement和传统方法的minimize error 是同样的意思。而且对于可能的overfit都有相应的处理方式:

* 对于minimize error : 添加一个惩罚变量$\lambda$, 对于越高次放的项（比如x的5次方以上）惩罚的越大。
* 对于maximize likelihood本身，没有对overfit进行处理。因为likelihood只是bayes theorem其中一部分，但是对于bayes theorem整体，还有一个p(w)的先验概率,通常越负责的，次数越高的，p(w)越低。这里的p(w)和minimize里面的惩罚变量是相同的作用

根据PRML公式1.43 
**p(w|D)=p(D|w)p(w)/p(D)**, 
如果我们选择maximum likelihood function p(D|w),那么像1.25节(P30)所说的，
相当于最大化了后验概率p(w|D),通过公式推导 Formula 1.67: 其实在线性拟合上 **Maximizing likelihood function**和**sum-of-squares**
是异曲同工之举。 也可以参见： http://mindhacks.cn/2008/09/21/the-magical-bayesian-method/ 第4.5节——— 最大似然与最小二乘。其中最精华的部分我想是反向思维:
* 正向思维是如何构建一条直线拟合这些点
* Bayes方法是反向的，假设存在这一条直线，通过这条直线生成这些点的概率

### 3.limitations of the maximum likelihood approach
**Suppose:** the observations are drawn independently from a Gaussian distribution whose **mean μ and variance σ 2 are unknown**, and we would like to determine these parameters from the data set.

we can therefore write the probability of the data set, given μ and σ^2 ,
<p align=center>
<img src=http://latex.codecogs.com/svg.latex?p%28x%7C%5Cmu%2C%5Csigma%5E2%29%20%3D%20%5Cprod_%7Bn%3D1%7D%5E%7BN%7DN%28x_n%7C%5Cmu%2C%5Csigma%5E2%29></img>
</p>

log likelihood:
<p align=center>
<img src=http://latex.codecogs.com/svg.latex?ln%5Crho%20%28x%7C%5Cmu%2C%5Csigma%5E2%29%20%3D%20-%5Cfrac%7B1%7D%7B2%5Csigma%5E2%7D%5Csum_%7Bn%3D1%7D%5E%7BN%7D%28x_n-%5Cmu%29%5E2-%5Cfrac%7BN%7D%7B2%7Dln%5Csigma%5E2-%5Cfrac%7BN%7D%7B2%7Dln%282%5Cpi%29></img>
</p>
Maximizing  with respect to μ, 
<p align=center>
<img src=http://latex.codecogs.com/svg.latex?%5Cmu_%7BML%7D%20%3D%20%5Cfrac%7B1%7D%7BN%7D%5Csum_%7Bn%3D1%7D%5E%7BN%7Dx_n></img>
</p>
maximizing with respect to σ^2
<p align=center>
<img src=http://latex.codecogs.com/svg.latex?%5Csigma_%7BML%7D%5E2%20%3D%20%5Cfrac%7B1%7D%7BN%7D%5Csum_%7Bn%3D1%7D%5E%7BN%7D%28x_n%20-%20%5Cmu_%7BML%7D%29%5E2></img>
</p>
We can see that: 

* on average the maximum likelihood estimate will obtain the correct mean 
* but will **underestimate the true variance by a factor (N − 1)/N**. **How to get this ?????**

<p align=center>
<img src=http://latex.codecogs.com/svg.latex?E%5B%5Cmu_%7BML%7D%5D%20%3D%20%5Cmu></img>
</p>
<p align=center>
<img src=http://latex.codecogs.com/svg.latex?E%5B%5Csigma_%7BML%7D%5E2%5D%20%3D%20%28%5Cfrac%7BN-1%7D%7BN%7D%29%5Csigma%5E2
></img>
</p>

### 4.How to make full use of the precious training data?
Please list some methods: 
- 1) Cross-validation
- 2) Leave-one-out technique
- 3) Various "information criteria" method

1. Cross-validation
2. Leave-one-out technique
3. Various "information criteria" method

### 5.How to select optimal value(minimizing the misclassification rage)?
CH1.5.1 (P39-40): When minimizing the misclassification rate, we should assign each value of x to the class having
the higher posterior probability p(C\_k|x), how should we decision the value of x? 
<p align=center>
<!--p(mistake) = p(x\in R_1,C_2)+p(x\in R_2,C_1) = \int_{R_1}p(x,C_2)dx + \int_{R_2}p(x,C_1)dx-->
<img src=http://latex.codecogs.com/svg.latex?p%28mistake%29%20%3D%20p%28x%5Cin%20R_1%2CC_2%29&plus;p%28x%5Cin%20R_2%2CC_1%29%20%3D%20%5Cint_%7BR_1%7Dp%28x%2CC_2%29dx%20&plus;%20%5Cint_%7BR_2%7Dp%28x%2CC_1%29dx></img>
</p>
**Answer** : I think this is not an issue. Because this is a decision problem in which p(x) is known. 

In Figure 1.24(shown as below), it is said the optimal value is where the curves for p(x, C\_1) and p(x, C\_2) cross. Why?
<p align=center>
<img src=https://github.com/AmosZ/Note-on-Machine-Learning/blob/master/img/Decision_Theory.png?raw=true></img>
</p>
We know that our target is to minimize :
<p align=center>
<!--p(mistake) = p(x\in R_1,C_2)+p(x\in R_2,C_1) = \int_{R_1}p(x,C_2)dx + \int_{R_2}p(x,C_1)dx-->
<img src=http://latex.codecogs.com/svg.latex?p%28mistake%29%20%3D%20p%28x%5Cin%20R_1%2CC_2%29&plus;p%28x%5Cin%20R_2%2CC_1%29%20%3D%20%5Cint_%7BR_1%7Dp%28x%2CC_2%29dx%20&plus;%20%5Cint_%7BR_2%7Dp%28x%2CC_1%29dx></img>
</p>
So we should assign arrange that each x is assigned to whichever class has the smaller value of the integrand in this formular.In other word, if p(x, C1 ) > p(x, C2 ) for a given value of x, then we should assign that x to class C1. When x^ is equal to x0:

* if x in R1, p(x,C1) > p(x,C2),
* if x in R2, p(x,C2) > p(x,C1).

So optimal value is where the curves for p(x, C\_1) and p(x, C\_2) cross

### (P1.10) CH1.5.4 (P45) Compensating for class priors: Do not understand the
last half part...?

# 3.Minimizing an error function and Bayesian approach in curve fitting

---------------------------------------------
Fit the data using a **polynomial function** of the form:
<p align=center>
<!-- y(x,\mathbf{w}) = w_0 + w_1x + w_{2}x^2 + ... + w_{m}x^M = \sum_{j=0}^{M}w_{j}x^j -->
<img src=http://latex.codecogs.com/svg.latex?y%28x%2C%5Cmathbf%7Bw%7D%29%20%3D%20w_0%20&plus;%20w_1x%20&plus;%20w_%7B2%7Dx%5E2%20&plus;%20...%20&plus;%20w_%7Bm%7Dx%5EM%20%3D%20%5Csum_%7Bj%3D0%7D%5E%7BM%7Dw_%7Bj%7Dx%5Ej></img>
</p>

For data point x\_n and target value t\_n, error function is :
<!-- E(\textbf{w}) = \frac{1}{2}\sum_{n=1}^{N}\{y(x_n,\textbf{w}) - t_n\}^2 -->
<p align=center>
<img src= http://latex.codecogs.com/svg.latex?E%28%5Ctextbf%7Bw%7D%29%20%3D%20%5Cfrac%7B1%7D%7B2%7D%5Csum_%7Bn%3D1%7D%5E%7BN%7D%5C%7By%28x_n%2C%5Ctextbf%7Bw%7D%29%20-%20t_n%5C%7D%5E2></img>
</p>

Then we need a regulator to prevent overfit:
$$
	\widetilde{E}(\textbf{w}) = \frac{1}{2}\sum\_{n=1}^{N}\{y(x\_n,\textbf{w}) - t\_n\}^2 + \frac{\lambda}{2}||w||^2
$$
where : 
$||w||^2 = \mathbf{w}^T\mathbf{w} = w\_0^2 + w\_1^2 + ... + w\_M^2$

<!--Reference-->
[deep_learning]: http://en.wikipedia.org/wiki/Deep_learning
[Likelihood function]: https://en.wikipedia.org/wiki/Likelihood_function
