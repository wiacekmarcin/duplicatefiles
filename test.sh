qmake -project "CONFIG+=qtestlib" "DEFINES+=TEST_DP" "QT+=testlib" -o DuplicateFiles.test.pro DuplicateFiles.pro
qmake -makefile -o Makefile.test DuplicateFiles.test.pro
make -f Makefile.test clean && make -f Makefile.test && ./DuplicateFiles
