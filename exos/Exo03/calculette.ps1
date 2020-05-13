$res = 0

if ($args.Count -eq 4) {

    #nom du fichier#
    $filename = args[0] + ".txt"
    #type d'opération#
    $operationtype = args[2]
    #Les 2 nombres#
    $number1 = args[1]
    $number2 = args[3]
    
    #selon l'opération choisie on fait le calcul correpondant#
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
       #Afficher le résultat de l'opération et le sauver dans le fichier#
    echo $res >> out-file $filename
} else {
    echo "Il n'y a pas exactement 4 arguments donnés... désolé."
}