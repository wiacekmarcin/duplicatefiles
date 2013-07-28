qmake -project "CONFIG +=testlib" -o DuplicateFiles.test.pro DuplicateFiles.pro
qmake -project "DEFINES += TEST_DP" -o DuplicateFiles.test.pro DuplicateFiles.test.pro
qmake -project "SOURCES = test.cpp $SOURCES" -o DuplicateFiles.test.pro DuplicateFiles.test.pro
qmake -project "HEADERS += test.h" -o DuplicateFiles.test.pro DuplicateFiles.test.pro
qmake -makefile -o Makefile.test DuplicateFiles.test.pro
make -f Makefile.test clean && make -f Makefile.test && ./DuplicateFiles
