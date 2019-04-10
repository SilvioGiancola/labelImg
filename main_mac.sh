#! /usr/bin/env bash
echo "LabelImg starter"
cd $( dirname "${BASH_SOURCE[0]}" )
conda --version
# source deactivate
# conda remove --name pyqt --all
conda create -y -n pyqt lxml
source activate pyqt
conda install -y python pylint pep8 flake8 yapf lxml
conda install -y opencv -c menpo 
# pip install opencv-python
pip install PyQt5
pyrcc5 -o resources.py resources.qrc
# echo "Run Image Handler"
# python labelImg.py
echo "Build Image Handler"
pip install pyinstaller
# rm -r dist
# rm -r build
# rm main.spec
pyinstaller -F labelImg.py
./dist/labelImg
