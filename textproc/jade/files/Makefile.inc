BINDIR=	${PREFIX}/bin
LIBDIR=	${PREFIX}/lib
DOCDIR= ${PREFIX}/share/doc/jade
INCDIR= ${PREFIX}/include/sp
SGMLDIR= ${PREFIX}/share/sgml/jade
PERL?=	perl
M4?=	m4

# Prevent descent into non existant subdirectories passed through
# from an assignment of SUBDIR on the make command line.
SUBDIR=

# The 2.1.x series of FreeBSD doesn't have libstdc++.
.if exists(/usr/lib/libstdc++.a)
CPPLIB=	-lstdc++
# SHLIB_MAJOR?=	1
# SHLIB_MINOR?=	5
.else
CPPLIB=	-lg++
.endif

# If you use gcc, then you must have at least version 2.7.2 and
# you must use -fno-implicit-templates
# and -O (or any optimization level >= 1).
# c++ is a front-end for gcc which takes care of linking with -lstdc++
# the -idirafter option is to work around the bsd.sys.mk lossage with C++
CXX=c++ -fno-implicit-templates -O2 -idirafter=${DESTDIR}/usr/include/g++
#WARN=-Wall -Wno-reorder -Wwrite-strings -Wpointer-arith -Wnested-externs -Woverloaded-virtual -Wbad-function-cast -Wno-unused
# Executables will be *very* large if you use -g.
DEBUG=
# Add -DSP_HAVE_BOOL if you have the bool type.
# Add -DSP_ANSI_CLASS_INST for ANSI style explicit class template instantiation.
# Add -DSP_MULTI_BYTE for multi-byte support.
# Add -DSP_HAVE_LOCALE if you have setlocale().
# Add -DSP_HAVE_GETTEXT if you gettext() and friends (eg Solaris 2.3).
# Add -DSP_HAVE_SOCKET if you have sockets and you want support for HTTP
# Add -DSGML_CATALOG_FILES_DEFAULT=\"/usr/local/lib/sgml/catalog\"
#   (for example) to change the value used if the SGML_CATALOG_FILES
#   environment variable is unset.  SP now automatically searches for a file
#   called "catalog" in the same directory as the document entity.
DEFINES=-DSGML_CATALOG_FILES_DEFAULT=\"${PREFIX}/share/sgml/catalog\"
DEFINES+=-DSP_HAVE_BOOL -DSP_ANSI_CLASS_INST
INCLUDES+=-I. -I${.CURDIR}/../include -I${.CURDIR}/../generic
CXXFLAGS=-ansi $(DEBUG) $(WARN) $(DEFINES) $(INCLUDES)

.SUFFIXES: .m4 .msg .h .cc .C .cxx .o .po .so

.m4.cxx:
	rm -f $@
	${M4} ${.CURDIR}/../lib/instmac.m4 $< >$@
	chmod -w $@

.msg.h:
	${PERL} -w ${.CURDIR}/../msggen.pl ${MSGGENFLAGS} $<

# Some of the C++ targets in bsd.lib.mk are messed up in FreeBSD 2.1.x

.if !exists(/usr/lib/libstdc++.a)
.cc.so .C.so .cxx.so:
	${CXX} ${PICFLAG} -DPIC ${CXXFLAGS} -c ${.IMPSRC} -o ${.TARGET}
	@${LD} -x -r ${.TARGET}
	@mv a.out ${.TARGET}

.endif
