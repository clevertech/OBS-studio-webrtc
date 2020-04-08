# Make sure ccache is found
export PATH=/usr/local/opt/ccache/libexec:$PATH
mkdir build
cd build
cmake \
-DENABLE_SCRIPTING=OFF \
-DDepsPath=/tmp/obsdeps \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/opt/ebs \
-DVLCPath=$PWD/../../vlc-master \
-DQTDIR=/usr/local/Cellar/qt/5.10.1 \
-DCMAKE_OSX_DEPLOYMENT_TARGET=10.10 \
-DOPENSSL_ROOT_DIR=/usr/local/opt/openssl@1.1 \
-Dlibwebrtc_DIR=../libwebrtc/cmake \
-DBUILD_BROWSER=false \
-DOBS_WEBRTC_VENDOR_NAME=Evercast \
-DOBS_VERSION_OVERRIDE=2.5.0 \
..
