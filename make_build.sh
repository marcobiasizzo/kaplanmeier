echo "Cleaning previous builds first.."
rm -rf dist
rm -rf build
rm -rf kaplanmeier.egg-info
pip uninstall kaplanmeier

echo "Making new wheel.."
echo ""
python3 setup.py bdist_wheel
echo ""

echo "Making source build .."
echo ""
python3 setup.py sdist
echo ""

read -p "Press [Enter] to install the pip package..."
pip install -U dist/kaplanmeier-0.1.9-py3-none-any.whl
echo ""

read -p ">twine upload dist/* TO UPLOAD TO PYPI..."
echo ""

read -p "Press [Enter] key to close window..."
