# _FunkyStack_

En utilisant un stylo et du papier :

Implémentez une pile _last-in-first-out_ (LIFO) en utilisant uniquement deux
files. La pile implémentée doit supporter toutes les fonctions d'une pile
normale (`push`, `top`, `pop` et `empty`).

Implémentez la classe FunkyStack :

- `void push(int x)` Ajoute l'élément x au sommet de la pile.
- `int pop()` Retire l'élément au sommet de la pile et le retourne.
- `int top()` Retourne l'élément au sommet de la pile.
- `boolean empty()` Retourne vrai si la pile est vide, faux sinon.

Donnez la complexité en espace et la complexité en temps pour chaque opération.

Notes :

Vous devez utiliser uniquement les opérations standard d'une file, ce qui
signifie que seules les opérations ajouter à l'arrière, aperçu/retirer de
l'avant, taille et est vide sont valides.

Défi bonus :

Utilisez uniquement **une** file, avec :

- `push()` complexité en temps `O(n)`, complexité en espace `O(1)`
- `pop()` T : `O(1)`, S : `O(1)`
- `empty()` T : `O(1)`, S : `O(1)`
- `top()` T : `O(1)`, S : `O(1)`
