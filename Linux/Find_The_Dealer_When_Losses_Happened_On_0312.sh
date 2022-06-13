#!/bin/bash
	awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule > Dealers_working_during_losses
 	echo 'Findings for March 12' >> Notes_Dealer_Analysis.txt
	grep Billy Dealers_working_during_losses >> Notes_Dealer_Analysis.txt
