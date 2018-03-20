# taining_adaboost
taining hog-adaboost with opencv

## Collect sapmles

### positive sample

square pictures with object in same size(like 32x32)

### negative sample

rectangule pictures with any object in any size

## How to use

1. modify '### parameter ###' in train.bash

'''

######### set parameters ##########

posW="36"

posH="36"

posNum="799"

'''

2. run train.sh

'''
~$ bash train.sh
'''

you may need to authorize to train.sh by 'chomd +x'

## Requirement 

opencv
