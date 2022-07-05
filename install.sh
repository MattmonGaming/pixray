#!/bin/bash

#script to install pixray and update the packages for an NVIDIA 30 series card(s)
pip install -r requirements.txt
pip install basicsr 

pip --no-cache-dir install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html

git clone https://github.com/pixray/diffvg
cd diffvg  
git submodule update --init --recursive
python setup.py install
