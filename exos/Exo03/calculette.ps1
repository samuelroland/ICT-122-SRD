$res = 0

if ($args.Count -isnot 4){
    echo "Il n'y a pas exactement 4 arguments donnés... désolé."
} else 
    {
    $filename = args[0] + ".txt"
    $operationtype = args[2]
    $number1 = args[1]
    $number2 = args[3]
    
    switch($operationtype){
        "+"{
            $res = $number1 + $number2
            break
        }
        "-"{
            $res = $number1 - $number2
            break
        }
        "*"{
            $res = $number1 * $number2
            break
        }
        "/"{
            $res = $number1 / $number2
            break
        }
    }
       
    echo $res >> out-file $filename
}