#!/bin/bash
        echo 'The mentioned dealer worked at that specified time over the 3 days' 
        cat *_Dealer_schedule | grep $1 | grep $2 | awk -F" " '{print $1,$2,$5,$6}'
