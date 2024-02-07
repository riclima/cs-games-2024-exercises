# `rpncalc`

Implémentez une simple calculatrice qui accepte comme entrée des calculs en [_Reverse Polish notation_](https://en.wikipedia.org/wiki/Reverse_Polish_notation).

Cette calculatrice doit accepter comme entrée des floats et les opérations `+`, `-`, `*`, `/`, un opérande ou opérateur par ligne, et afficher le résultat final.

Le binaire doit être appélée `rpncalc`.

Pour l'entrée, elle doit accepter des opérations passées par `stdin`, en donnant le nom de plusieurs fichiers comme argument, ET `stdin` et fichiers comme argument dans un seul appel (il doit procésser `stdin` en premier):

Exemples:

```
$ rpncalc <<EOF
1
2
+
EOF
3
```

```
$ cat input.txt
1
2
+
$ rpncalc input.txt
3
```

```
$ cat input.txt
2
*
$ rpncalc input.txt <<EOF
1
2
+
EOF
6
```