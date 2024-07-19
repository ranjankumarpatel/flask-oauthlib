venv/Scripts/python -m ensurepip --upgrade
venv/Scripts/python -m pip install pip setuptools wheel -U
venv/Scripts/python -m pip install -r requirements.txt -U

venv/Scripts/python -m pip install poetry twine -U
#
venv/Scripts/poetry config repositories.pypiserver https://pypiserver.thinktalentws48.click/simple/
venv/Scripts/poetry config http-basic.pypiserver devops 13972684
venv/Scripts/poetry source add --secondary pypiserver https://pypiserver.thinktalentws48.click/simple/
venv/Scripts/poetry config http-basic.pypiserver devops 13972684
venv/Scripts/poetry config --list
venv/Scripts/poetry config virtualenvs.in-project true
#venv/Scripts/poetry run pip install -r requirements.txt
#
#
#rm -rf build/ dist/ encryption_util.egg-info/
#venv/Scripts/python -m build
##venv/Scripts/poetry build
##venv/Scripts/poetry publish --repository pypiserver
#twine upload -r local --username devops --password 13972684 --repository-url https://pypiserver.thinktalentws48.click dist/*