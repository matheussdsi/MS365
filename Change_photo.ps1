#Conectar ao portal usando GRAPH com escopo de leitura e gravação#
Connect-MgGraph -Scopes "User.ReadWrite.All"

#inserir  foto usando o ID e arquivo em seu computador local#
Set-MgUserPhotoContent -UserId "6bba0907-a8d3-4c45-bf7d-b562c24522d4" -InFile "C:\temp\Imagem.jpg"
