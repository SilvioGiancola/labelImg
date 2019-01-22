echo "labelImg starter"
call conda --version
call conda create -n pyqt 
call activate pyqt
call conda install python pyqt pylint pep8 flake8 yapf opencv lxml
call pyrcc5 -o resources.py resources.qrc
python labelImg.py
PAUSE
