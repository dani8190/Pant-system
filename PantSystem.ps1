cls
#sætter variabler
    [int]$bill;
    $pant = @{"a"=1; "b"=1.5; "c"=3}


    $pant.GetEnumerator() | % {
    
        write-host $_.Key " = " $_.Value "kr"
    
    }

#List alle symbolerne, og tryk derefter {enter}

$playground = Read-Host "PantSymboler";


#udregner alle symboler
$test = $playground -Split "";


        $test | foreach {
    
            if ($_ -eq "a"){
    
                $bill += 1

            } elseif ($_ -eq "b"){
    
                $bill += 1.5

            } elseif ($_ -eq "c"){

                $bill += 3

            }
    
        }


write-host "Total " -nonewline
write-host $bill -f Green -nonewline
Write-Host " kr"

$bill = $null;