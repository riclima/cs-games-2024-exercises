# `anagram`

Étant donné deux mots en minuscules, retourner le code de sortie 0 s'ils sont des anagrammes l'un de l'autre, et le code de sortie 1 s'ils ne le sont pas.

```
$ anagram anagram nagaram
$ [ $? -eq 0 ] && echo "anagram"
anagram
```

```
$ anagram car rat
$ [ $? -eq 1 ] && echo "not anagram"
not anagram
```
