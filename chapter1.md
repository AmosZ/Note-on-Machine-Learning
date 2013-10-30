Chapter 1
======================

1.Introduction
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

![Alt text](http://latex.codecogs.com/gif.latex?V%28t&plus;1%29%20%3D%20w*V%28t%29%20&plus;%20C_%7B1%7D*R_%7B1%7D*%28P%28t%29%20-%20X%28t%29%29%20&plus;%20C_%7B2%7D*R_%7B2%7D*%28G%28t%29%20-%20X%28t%29%29)

![text](http://latex.codecogs.com/gif.latex?X%28t&plus;1%29%20%3D%20X%28t%29%20&plus;%20V%28t&plus;1%29)
<!--
$$
V\(t+1\) = w\*V\(t\) + C\_{1}\*R\_{1}\*\(P\(t\) - X\(t\)\) + C\_{2}\*R\_{2}\*\(G\(t\) - X\(t\)\)
$$
$$
X(t+1) = X(t) + V(t+1)
$$
http://latex.codecogs.com/gif.latex?V(t&plus;1)&space;=&space;w*V(t)&space;&plus;&space;C_{1}*R_{1}*(P(t)&space;-&space;X(t))&space;&plus;&space;C_{2}*R_{2}*(G(t)&space;-&space;X(t))


-->

It also need a balance between **exploitation** and **exploration**. But it has a global attraction when particle explore the unknown space. It is lucky...

**Deep Learning** : a new branch of machine learning. [wikipedia][deep_learning]


2.Bayes' theorem
--------------------------------
![Bayes theorem](http://latex.codecogs.com/gif.latex?p%5C%28w%7CD%5C%29%20%3D%20%5Cfrac%7Bp%5C%28D%7Cw%5C%29p%5C%28w%5C%29%7D%7Bp%5C%28D%5C%29%7D)

In that example,Bayes' theorem was used to *convert a prior probability into a posterior probability by incorporating the evidence provided by the observed data.* 
**We can adopt a similar approach when making inferences about quantities such as the parameters w in the polynomial curve fitting example.**

- We capture our assumptions about w, before observing the data, in the form of a prior probability distribution p(w). 
- The **effect** of the observed data D = {t1 , . . . , tN } is expressed through the **conditional probability p(D|w)**, and we shall see later how this can be represented explicitly.

In the Bayesian \(or epistemological\) interpretation, probability measures *a degree of belief*.

[deep_learning]: http://en.wikipedia.org/wiki/Deep_learning

Pros. & Cons. of Bayes (p23.)
---------------
**Pros.**

- 1) **The inclusion of prior knowledge in Bayes theorem (Formula 1.12) arises naturally.
** This **means** Bayes theorem coincides with the cognition of people to the world. 
*Ex. After one observes a result, he/she will improve his/her assumption.*

**Cons.**

- 1) **The selection of the prior distribution.** 
Bayesian methods based on poor choices of prior can give poor results with high confidence.

<script type="text/javascript" src="http://benweet.github.io/stackedit/lib/MathJax/MathJax.js?config=TeX-AMS_HTML"></script>

