Clear-Host

# Funktionen
function HGW {
    Write-Host ("Herzlichen Glueckwunsch, Sie haben gewonnen!") -ForegroundColor yellow ;
}
function PlayAgain {
    $next = Read-Host "Möchten Sie nochmals spielen? (J/N)"

    if ($next -eq "n"){
        Write-Host "Vielen Dank, dass Sie unser Programm verwendet haben." -foregroundcolor yellow ; pause ; exit
}
}

do{
Clear-Host

# Variabeln implementieren

[int] $zahl = 0;
$zahl = Get-Random -Minimum 1 -Maximum 100;
[int] $guess = 0;
[string] $next = "n";

# Variable ausgeben für Test
Write-Host $zahl -ForegroundColor red

do{

#Raten
$guess = Read-Host "Raten sie eine Zahl zwischen 1-100"

# Variable ausgeben für Test
# Write-Host $guess

# Ueberpruefung
if ($guess -eq $zahl) {
    HGW ; PlayAgain ;
}

elseif ($guess -gt $zahl) {
    Write-Host ("Ihre Zahl ist groesser als die gesuchte. Raten Sie nochmals!")
}

elseif ($guess -lt $zahl) {
    Write-Host ("Ihre Zahl ist kleiner als die gesuchte. Raten Sie nochmals!")
}
}while ($guess -ne $zahl)

}while ($next = "j")