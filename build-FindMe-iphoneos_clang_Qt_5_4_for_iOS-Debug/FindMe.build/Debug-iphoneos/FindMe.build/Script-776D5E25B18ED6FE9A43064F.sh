#!/bin/sh
cp /Users/sanchirkartiev/Documents/Projects/Qt/FindMe/build-FindMe-iphoneos_clang_Qt_5_4_for_iOS-Debug/qt.conf $CODESIGNING_FOLDER_PATH/qt.conf;  test -d $CODESIGNING_FOLDER_PATH/qt_qml && rm -r $CODESIGNING_FOLDER_PATH/qt_qml;  mkdir -p $CODESIGNING_FOLDER_PATH/qt_qml &&  for p in /Users/sanchirkartiev/Qt5.4.0/5.4/ios/qml; do rsync -r --exclude='*.a' --exclude='*.prl' --exclude='*.qmltypes'  $p/ $CODESIGNING_FOLDER_PATH/qt_qml; done
