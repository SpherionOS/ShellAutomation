#! /bin/bash

# From the moment I understood the weakness of my flesh, it disgusted me. 
# I craved the strength and certainty of steel. I aspired to the purity of the Blessed Machine.
# Your kind cling to your flesh, as if it will not decay and fail you. 
# One day the crude biomass that you call a temple will wither, and you will beg my kind to save you. 
# But I am already saved, for the Machine is immortal…

# Check if the SRA array is online
echo " "
echo "SRA Array Check"
#if ping -c 1 [IP] > /dev/null
then
  echo "SRA-01 Online"
else
  echo "ERROR: SRA-01 is not responding"
  code1="1"
fi

#if ping -c 1 [IP] > /dev/null
then
  echo "SRA-02 Online"
else
  echo "ERROR: SRA-02 is not responding"
  code2="2"
fi

#if ping -c 1 [IP] > /dev/null
then
  echo "SRA-03 Online"
else
  echo "ERROR: SRA-02 is not responding"
  code3="3"
fi

# Check the backup server
echo " "
echo "Backup Server Check"
#if ping -c 1 [IP] > /dev/null
then
  echo "PMB-01 Online"
else
  echo "ERROR: PMB-01 is not responding"
fi

# Checking network status

if [[ $code1 -eq "1" ]] && [[ $code2 -eq "2" ]] && [[ $code3 -eq "3" ]]
then
  echo " "
  echo "ERROR: Power loss/network issue detected, physical inspection required"
fi

