venv/Scripts/python -m ensurepip --upgrade
venv/Scripts/python -m pip install pip setuptools wheel -U
venv/Scripts/python -m pip install -r requirements.txt -U
venv/Scripts/python -m pip install twine -U
venv/Scripts/python -m pip list
#venv/Scripts/python -m pip list -o
#venv/Scripts/python -m pip freeze

rm -rf build/ dist/ encryption_util.egg-info/
venv/Scripts/python -m build
venv/Scripts/twine upload -r local --username devops --password 13972684 --repository-url https://pypiserver.thinktalentws48.click dist/*