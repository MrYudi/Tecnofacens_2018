--OBS.: Não existe input em SQL

Create function fnpalindromo(@txt varchar(50))
Returns int
As
Begin

	Declare @txtInv varchar(50);

	Set @txt = Upper(@txt);

	Set @txtInv = REVERSE(@txt);

	If @txt = @txtInv
		Return 1;
	
	Return 0;
End

--Main

Declare @i int = 0;
Declare @aux varchar(50);

WHILE @i < 2
BEGIN

	If @i = 0
		Set @aux = 'arara';
	Else
		Set @aux = 'jose';

	If dbo.fnpalindromo(@aux) = 0
		Select @aux as Palavra, 'false' as Palindromo
	Else
		Select @aux as Palavra, 'true' as Palindromo

	SET @i = @i + 1;
END