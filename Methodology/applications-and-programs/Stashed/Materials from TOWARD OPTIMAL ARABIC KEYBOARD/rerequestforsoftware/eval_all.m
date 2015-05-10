function eval_all(weight)

kb = [
20
19
9
25
24
23
22
30
12
11
18
17
33
6
27
5
8
29
28
26
4
2
3
15
1
32
7
31
16
14
10
13
21
];


remove_ind = [25 22 23 30];

std_fitness_penalty = evaluate_fitness_penalty(kb, remove_ind,weight)


