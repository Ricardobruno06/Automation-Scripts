#!/bin/bash

sleep 60
#Iniciar guest= dude.mk
xe vm-start uuid=eb0d1e9a-25ad-4b30-6155-1270364a6608

sleep 60
#Iniciar guest= UNBOUND
xe vm-start uuid=8908903a-17ec-2599-21c3-8b2fba4badde

sleep 60
#Iniciar guest= NS2
xe vm-start uuid=b5fc0bf4-04e0-ed51-ccd3-adc25a14e868

sleep 60
#Iniciar guest= NS1
xe vm-start uuid=6731da3d-fe1a-8503-942e-5534eaec3f8

sleep 60
#Iniciar guest= WinDude
xe vm-start uuid=dd58f7d3-64b7-febb-b33c-f26f63333658

sleep 60
#Iniciar guest= Windows-2012-North-Carolina
xe vm-start uuid=03431271-d0d0-13a6-ef63-78ac323e8720

sleep 60
#Iniciar guest= Windows-2012-North-Carolina
xe vm-start uuid=a4008ee0-131f-e6fd-cb69-46f1a8d9178a

sleep 60
#Iniciar guest= WindowsANM
xe vm-start uuid=a4008ee0-131f-e6fd-cb69-46f1a8d9178a

sleep 60
#Iniciar guest= Speedtest
xe vm-start uuid=f9c2aea3-df9e-3301-e577-66492df33c30