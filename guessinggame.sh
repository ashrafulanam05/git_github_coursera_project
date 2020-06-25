function guess(){

    real_num=$(ls | wc -l)

    while true;
    do
        echo "Enter a guessed number: "
        read  guess_num
        if [ $guess_num -lt $real_num ]
        then
            echo "The number you have guessed a too low number than original number of directory.Please try again"
        elif [ $guess_num -gt $real_num ]
        then
            echo "The number you have guessed a too high number than original number of directory.Please try againr"
        else
            echo " Congratulation you have guessed right number "
        break;
        fi
    done
}
echo "You should guess the number of files in the current directory!"
guess
