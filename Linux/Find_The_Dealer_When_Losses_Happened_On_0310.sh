#!/bin/bash
	awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule > Dealers_working_during_losses
	echo 'Findings for March 10' > Notes_Dealer_Analysis.txt
 	grep Billy Dealers_working_during_losses >> Notes_Dealer_Analysis.txt
