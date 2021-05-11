#!/bin/bash
!git clone https://github.com/openai/train-procgen.git
!git clone https://github.com/openai/baselines 
cd baselines
!pip install -e .
cd ..
cd train-procgen
!pip install pytorch_lightning==1.1.4
%tensorflow_version 1.x
!pip install gym
!pip install mpi4py
!pip install procgen
