#! /usr/bin/env bash
echo "LabelImg starter"
cd $( dirname "${BASH_SOURCE[0]}" )
conda --version
conda create -n pyqt
source activate pyqt
conda install python pyqt pylint pep8 flake8 yapf lxml
conda install -c menpo opencv
pyrcc5 -o resources.py resources.qrc
python labelImg.py
