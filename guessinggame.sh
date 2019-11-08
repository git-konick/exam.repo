 #!/usr/bin/env bash
 # File: guessinggame.sh

 echo "How may files are in the current directory? Please, Enter number:"
  read response
   echo "You entered : $response"
if [[ $response -eq $(ls | wc -l) ]] # determine the exact value
 then
  for code in $(ls)  # determine the final output
   do
    echo "$code [contents of current directory]"
   done
    echo ""
    echo "Congratulations! $response is a great number!!!"
    echo "End programm."
 elif [[ $response -gt $(ls | wc -l) ]] # determined by the flag -gt
   then
    echo "$response > (x) >>>>> (X) value is less."
      bash guessinggame.sh
 else
    echo "$response < (x) <<<<< (X) value is greater."
      bash guessinggame.sh
fi
