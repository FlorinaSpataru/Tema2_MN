///* Spataru Florina Gabriela 313CA Tema2 MN */


Metode de rezolvare a sistemelor de ecuatii liniare pentru o matrice rara:

1. Metode exacte (calculul determinantilor)

- foarte instabila si inexacta deoarece inversa se calculeaza cu inv(A)

2. Factorizari LU

- este metoda folosita la tema
- Crout si Doolittle sunt similare
- Cholesky nu poate fi folosita oricand pentru ca e nevoie ca matricea sa 
indeplineasca anumite coditii initiale pentru a o putea aplica, insa, folosind 
acesta metoda, calculam cu o matrice mai putin
- toate aceste metode folosesc impartirea la elementul de pe diagonala
principala => instabilitate numerica

3. Metode iterative

- nu pot fi folosite oricand datorita conditiilor initiale pe care trebuie sa le 
indeplineasca matricea A
- Jacobi si Gauss-Seidel sunt similare
- suprarelaxarea este ineficienta pentru ca pe langa matricile D, L, U, N, P, G si C 
apare si W; in practica pornim de la Gauss-Seidel

4. Factorizari ortogonale

- avand in vedere ca nu exista conditii initiale, Householder, Givens si Gram-Schmidt 
pot fi folosite pentru orice matrice
- multitudinea de impartiri si radicali duce la instabilitate numerica
