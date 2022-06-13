#!/bin/bash
	ls *_Dealer_schedule | grep $1
	cat $1_Dealer_schedule > Dealer_team_working_on_the_$1 
	cat Dealer_team_working_on_the_$1
