#!/bin/bash

sleep 60
#Iniciar guest= Ubuntu-16-DNS-Arkansas
xe vm-start uuid=3bc1c5db-cd23-29fe-2c42-73b0b59893c0

sleep 60
#Iniciar guest= Debian9-Rec-DNS2-Kansas
xe vm-start uuid=907cca53-3900-5667-4f02-5df394df4474

sleep 60
#Iniciar guest= Debian-Rev-DNS-Arizona
xe vm-start uuid=2ccfd95d-e332-47a7-71ec-36e328769baf

sleep 60
#Iniciar guest= Debian9-Rev-DNS2-North_Carolina
xe vm-start uuid=c2b9f1f3-37bf-2191-b9ea-513c1c24075d