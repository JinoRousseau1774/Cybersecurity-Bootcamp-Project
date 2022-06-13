#!/bin/bash
	awk '{print $1,$2,$5,$6}' 0315_Dealer_schedule > Dealers_working_during_losses
 	echo 'Findings for March 15' >> Notes_Dealer_Analysis.txt
	grep Billy Dealers_working_during_losses | head -n 3 >> Notes_Dealer_Analysis.txt
