#!/bin/bash
printf "\n"

echo "this is a shellscript that batch checks the integrity of multiple github/svn/hg repositories in a main directory, it should be executed from that main directory."

printf "\n"

date
echo "" > integrity.log
LOG=integrity.log
date >> ${LOG}
echo "" >> ${LOG}
for test_case in `ls`
   do
      printf "\n###################################\n" 
      echo "" >> ${LOG}
      echo "###################################" >> ${LOG}
        if [ -d ${test_case}/.git ]
         then
           printf "checking git test_case : ${test_case} :\n"
           echo "checking git test_case : ${test_case} :" >> ${LOG}
           cd ${test_case} 
           git status
           git status >> ../${LOG}
           cd ..
        else 
             if [ -d ${test_case}/.svn ]
              then
                printf "checking svn test_case : ${test_case} :\n" 
                echo "checking svn test_case : ${test_case} :" >> ${LOG}
                cd ${test_case} 
                svn status 
                svn status >> ../${LOG}
                cd ..
             else 
                 if [ -d ${test_case}/.hg ]
                  then
                    printf "checking hg test_case : ${test_case} :\n" 
                    echo "checking hg test_case : ${test_case} :" >> ${LOG}
                    cd ${test_case} 
                    hg status 
                    hg status >> ../${LOG}
                    cd ..
                 else
                     printf "${test_case} is neither from git nor svn" 
                     echo "${test_case} is neither from git nor svn" >> ${LOG}
                 fi
             fi
        fi
      printf "\n************************************\n" 
      echo  "************************************" >> ${LOG}
      echo "" >> ${LOG}
   done
