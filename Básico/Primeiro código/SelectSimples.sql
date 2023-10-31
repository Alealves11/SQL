/*

O SELECT utilizamos o caractere especial * (asterisco) para recuperar todas as linhas e colunas de uma tabela.
Em boas práticas não devemos utilizá-lo, devido a não sabermos o quanto irá fazer o banco desempenhar de forma desnecessaria,
o ideal é colocar os nomes das colunas desejadas.


Sintaxe:

SELECT -> SELECIONE
  *    -> [Todas as colunas]	
FROM   -> [nome da tabela]
		
*/




SELECT * FROM Employees;



EmployeeID		LastName		FirstName		Title
1				Pinho			Tracy			Sales Representative
2				Docks			Julio			Vice President, Sales
3				Leverling		Janet			Sales Representative
4				Peacock			Margaret		Sales Representative
5				Buchanan		Steven			Sales Manager
6				Suyama			Michael			Sales Representative
7				King			Robert			Sales Representative
8				Callahan		Laura			Inside Sales Coordinator
9				Dodsworth		Anne			Sales Representative
