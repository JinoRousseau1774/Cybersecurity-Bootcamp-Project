#!/bin/bash
	read -r line | grep BlackJack < 0310_Dealer_schedule
	echo  "$line"
