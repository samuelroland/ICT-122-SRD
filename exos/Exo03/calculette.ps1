$res = 0

if ($args.Count -eq 4) {

    #nom du fichier#
    $filename = args[0] + ".txt"
    #type d'op�ration#
    $operationtype = args[2]
    #Les 2 nombres#
    $number1 = args[1]
    $number2 = args[3]
    
    #selon l'op�ration choisie on fait le calcul correpondant#
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
       #Afficher le r�sultat de l'op�ration et le sauver dans le fichier#
    echo $res >> out-file $filename
} else {
    echo "Il n'y a pas exactement 4 arguments donn�s... d�sol�."
}