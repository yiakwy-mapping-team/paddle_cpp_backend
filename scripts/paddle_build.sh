ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

BUILD=${ROOT}/build #${ROOT}/cmake-build-debug
mkdir -p $BUILD

cd $BUILD

# addtional flags to add
#  -DON_INERENCE=ON
cmake .. -DPYTHON_EXECUTABLE:FILEPATH=$(which python) \
	 -DPYTHON_INCLUDE_DIR:PATH=$PYTHON_INCLUDE_DIR \
	 -DPYTHON_LIBRARY:FILEPATH=$PYTHON_LIBRARY \
	 -DWITH_GPU=ON \
	 -DWITH_TESTING=OFF \
	 -DCMAKE_BUILD_TYPE=Release
