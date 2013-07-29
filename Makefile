#############################################################################
# Makefile for building: DuplicateFiles
# Generated by qmake (2.01a) (Qt 4.8.1) on: Mon Jul 29 20:31:51 2013
# Project:  DuplicateFiles.test.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile DuplicateFiles.test.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DTEST_DP -DQT_NO_DEBUG -DQT_TESTLIB_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtTest -I/usr/include/qt4 -I. -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtTest -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = dpdir.cpp \
		dpfile.cpp \
		dptest.cpp \
		main.cpp \
		mainwindow.cpp \
		taskprogress.cpp \
		taskprogressmanager.cpp \
		test.cpp \
		utils.cpp moc_dptest.cpp \
		moc_mainwindow.cpp
OBJECTS       = dpdir.o \
		dpfile.o \
		dptest.o \
		main.o \
		mainwindow.o \
		taskprogress.o \
		taskprogressmanager.o \
		test.o \
		utils.o \
		moc_dptest.o \
		moc_mainwindow.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qtestlib.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		DuplicateFiles.test.pro
QMAKE_TARGET  = DuplicateFiles
DESTDIR       = 
TARGET        = DuplicateFiles

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: DuplicateFiles.test.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qtestlib.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtTest.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile DuplicateFiles.test.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/qtestlib.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtTest.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile DuplicateFiles.test.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/DuplicateFiles1.0.0 || $(MKDIR) .tmp/DuplicateFiles1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/DuplicateFiles1.0.0/ && $(COPY_FILE) --parents dpdir.h dpfile.h dptest.h err.h mainwindow.h taskprogress.h taskprogressmanager.h test.h utils.h .tmp/DuplicateFiles1.0.0/ && $(COPY_FILE) --parents dpdir.cpp dpfile.cpp dptest.cpp main.cpp mainwindow.cpp taskprogress.cpp taskprogressmanager.cpp test.cpp utils.cpp .tmp/DuplicateFiles1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/DuplicateFiles1.0.0/ && (cd `dirname .tmp/DuplicateFiles1.0.0` && $(TAR) DuplicateFiles1.0.0.tar DuplicateFiles1.0.0 && $(COMPRESS) DuplicateFiles1.0.0.tar) && $(MOVE) `dirname .tmp/DuplicateFiles1.0.0`/DuplicateFiles1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/DuplicateFiles1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_dptest.cpp moc_mainwindow.cpp moc_test.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_dptest.cpp moc_mainwindow.cpp moc_test.cpp
moc_dptest.cpp: dptest.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) dptest.h -o moc_dptest.cpp

moc_mainwindow.cpp: mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_test.cpp: test.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) test.h -o moc_test.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/usr/bin/uic-qt4 mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

dpdir.o: dpdir.cpp dpdir.h \
		dpfile.h \
		taskprogressmanager.h \
		taskprogress.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dpdir.o dpdir.cpp

dpfile.o: dpfile.cpp dpfile.h \
		taskprogressmanager.h \
		err.h \
		utils.h \
		taskprogress.h \
		dpdir.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dpfile.o dpfile.cpp

dptest.o: dptest.cpp dptest.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dptest.o dptest.cpp

main.o: main.cpp mainwindow.h \
		dpdir.h \
		dpfile.h \
		taskprogressmanager.h \
		taskprogress.h \
		test.h \
		moc_test.cpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

taskprogress.o: taskprogress.cpp taskprogress.h \
		taskprogressmanager.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o taskprogress.o taskprogress.cpp

taskprogressmanager.o: taskprogressmanager.cpp taskprogressmanager.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o taskprogressmanager.o taskprogressmanager.cpp

test.o: test.cpp test.h \
		dpdir.h \
		dpfile.h \
		taskprogressmanager.h \
		taskprogress.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o test.o test.cpp

utils.o: utils.cpp utils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o utils.o utils.cpp

moc_dptest.o: moc_dptest.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dptest.o moc_dptest.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

