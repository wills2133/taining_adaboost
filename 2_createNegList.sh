#!/bin/sh  

#create sample list"
inpuitFile="${PWD}/negdata/*"
outputFile="${PWD}/negdata/negdata.dat"
#: > $OutputFile   
#clear old file
`rm ${outputFile}`
#循环读取文件夹名  
for file_a in ${inpuitFile}
do 
	temp_file=`basename ${file_a}`
	#echo ${temp_file}
	echo ${temp_file} >> ${outputFile}
done

echo "${outputFile} create success!"
