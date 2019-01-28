rm res.txt
for t in 8 12 16 32
do
    printf "$t threads:\n" >> res.txt
    printf "\tNaive\tCUDA\t in ms\n" >> res.txt
    for i in 100 1000 5000 10000
    do
        printf "\t" >> res.txt
        ./blur $i $i $t $t >> res.txt
    done
    printf "_________________\n" >> res.txt
done