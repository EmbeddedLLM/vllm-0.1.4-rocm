#!/bin/bash
export PYTORCH_VERSION=$(python -c 'import torch; print(torch.__version__)')

echo $PYTORCH_VERSION

if [[ $PYTORCH_VERSION == *"2.1"* ]]
then
echo "2.1.1"
export GPU_ARCHS="gfx90a;gfx940;gfx941;gfx942"
export PYTHON_SITE_PACKAGES=$(python -c 'import site; print(site.getsitepackages()[0])')
patch "${PYTHON_SITE_PACKAGES}/torch/utils/hipify/hipify_python.py" "./rocm_patch/hipify_patch-torch2.1.1.patch"
fi