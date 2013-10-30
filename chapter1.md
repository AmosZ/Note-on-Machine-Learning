
Chapter 1
======================

* [Introduction](#introduction)
* [Bayes' theorem](#bayes)
	* [Problems](#bayes_problem)

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

<h2 id=bayes>2.Bayes' theorem</h2>
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

<h3 id=bayes_problem>Problem:</h3>
<h4 id=likelihood>What is likelihood function?</h4>
[Likelihood function in wikipedia][Likelihood function]

In statistics, a likelihood function (often simply the likelihood) is a **function of the parameters of a statistical model**.
We should understand the difference between **likelihood** and **probability**

* Probability is used when describing *a function of the outcome given a fixed parameter value*. For example, if a coin is flipped 10 times and it is a fair coin, what is the probability of it landing heads-up every time? 
* Likelihood is used when describing *a function of a parameter given an outcome*. For example, if a coin is flipped 10 times and it has landed heads-up 10 times, what is the likelihood that the coin is fair?

<h4 id=why_likelihood> Why we should maximum likelihood function?</h4>




[deep_learning]: http://en.wikipedia.org/wiki/Deep_learning
[Likelihood function]: https://en.wikipedia.org/wiki/Likelihood_function
