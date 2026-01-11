# Gauss' principle

The Gauss' principle states that the accelerations $\bar{a}_k$ of $n$ solids subject to
constraints, deviate the least from the accelerations $a_k$ that the solids would have
had without the constraints. Where, the deviation of $\bar{a}_k$ from $a_k$ is measured
using the following metric

\[
(\bar{a}_k-a_k)^TM_k(\bar{a}_k - a_k).
\]

Hence, for $n$ solids we have

\[
\minimize{\bar{a}_1,\dots\bar{a}_n}
V(\bar{a}_1,\dots\bar{a}_n) = \sum_{k=1}^{n}(\bar{a}_k-a_k)^TM_k(\bar{a}_k - a_k),
\]

where

\[
M_k = \begin{bmatrix}m_kI & 0\\ 0 & \mathbb{I}_k\end{bmatrix},
\]

+ $m_k$ - mass of the $k$-th solid
+ $\mathbb{I}_k$ - inertia (about the center of mass) of the $k$-th solid
+ $I \in \mathbb{R}^{3 \times 3}$ - identity matrix.

All quantities are expressed in a common frame of reference. Define

\begin{align}
\bar{a}_k &= J_k\ddot{q} + \dot{J}_k\dot{q} \nonumber \\
a_k &= M_k^{-1}(w_k - n_k) \leftarrow \mbox{Newton-Euler equations}. \nonumber
\end{align}

The term $n_k$ is given by

\[
n_k = \begin{bmatrix} 0 \\ \omega_k\times\mathbb{I}_k\omega_k \end{bmatrix},
\]

while $w_k = (f_k,t_k)$ denotes the external wrench applied to the $k$-th solid ($f_k$
is the force applied at its center of mass). Substituting $\bar{a}_k$ and $a_k$ from
above in $V$ leads to

\begin{align}
V(\ddot{q}) &= \sum_{k=1}^{n}(J_k\ddot{q} + \dot{J}_k\dot{q}-M_k^{-1}(w_k - n_k))^TM_k
%
(J_k\ddot{q} + \dot{J}_k\dot{q}-M_k^{-1}(w_k - n_k)) \nonumber \\ &:=
\sum_{k=1}^{n}\left\{\ddot{q}^TJ_k^{T}M_kJ_k\ddot{q} + 2\ddot{q}^TJ_k^{T}M_k
(\dot{J}_k\dot{q} - M_k^{-1}(w_k - n_k))\right\}, \nonumber
\end{align}

where terms independent of $\ddot{q}$ were dropped.

\[
\frac{\partial V}{\partial \ddot{q}} = \sum_{k=1}^{n}\left\{J_k^{T}M_kJ_k\ddot{q} +
J_k^{T}M_k\dot{J}_k\dot{q} - J_k^{T}(w_k - n_k))\right\} = 0.
\]

After rearranging we obtain the equations of motion $H(q)\ddot{q} + h(q, \dot{q}) =
J^Tw$:

\[
\underbrace{\sum_{k=1}^{n}J_k^{T}M_kJ_k}_{H(q)}\ddot{q} +
\underbrace{\sum_{k=1}^{n}J_k^{T}(M_k\dot{J}_k\dot{q} +n_k)}_{h(q, \dot{q})} =
\underbrace{\sum_{k=1}^{n}J_k^{T}}_{J^T}w_k, \quad w = (w_1, \dots, w_n).
\]
