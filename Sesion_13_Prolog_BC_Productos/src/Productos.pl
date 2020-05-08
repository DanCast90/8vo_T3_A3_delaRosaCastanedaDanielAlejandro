% articulo(clave, descripcion, precio)
producto(pr1, computadora, 15).
producto(pr2, raton_alambrico, 10).
producto(pr3, proyector, 10).
producto(pr4, adaptador_vga, 10).
producto(pr5, raton_inalambrico, 5).
producto(pr6, memoria_usb, 5).
producto(pr7, disco_externo, 5).
producto(pr8, escritorio, 100). 

% inventario(clave, existencias)
inventario(pr1, 32).
inventario(pr2, 4).
inventario(pr3, 5).
inventario(pr4, 64).
inventario(pr5, 12).
inventario(pr6, 10).
inventario(pr7, 89).

% cliente(nombre, ciudad, calificacion-credito)
cliente(ana, fresnillo, 5).
cliente(maria, jerez, 4).
cliente(luis, jerez, 2).
cliente(juan, zacatecas, 3).
cliente(gerardo, gaudalupe, 4).
cliente(david, zacatecas, 5).
cliente(perla, gaudalupe, 4).
cliente(omar, zacatecas, 3).
cliente(lucia, jerez, 4).
cliente(diana, fresnillo, 1).

% _ (guion bajo) COMODIN que permite UNIFICAR cualquier valor, SIN MOSTRARLO

%EJEMPLO: crear regla que muestre a los clientes de Jerez
clientes_jerez(Nombre) :- cliente(Nombre, jerez, _).	%PROBAR CONSULTA: clientes_jerez(Nombre).

%EJEMPLO 2: mostrar los clientes con calificacion de 5
clientes_5(Nombre) :- cliente(Nombre, _, 5).

%EJEMPLO 3: mostrar un listado con el nombre del producto y su existencia
producto_cantidad(Prod, Cant):- producto(NumProd, Prod, _) , inventario(NumProd, Cant).



uno(X,Y):- cliente(X,Y,_).
dos(X,Y) :- cliente(Y,_,X).
tres(X,Y,Z) :- cliente(X,Y,Z).
cuatro(X,Y):- producto(Z, X, _) , inventario(Z, Y).
cinco(X,Y) :- producto(X,Y,_).
seis(X,Y) :- inventario(X,Y).
siete(X,Y) :-  producto(Z,X,_), inventario(Z,Y).
