# $OpenBSD: Makefile,v 1.8 2019/01/01 18:00:01 landry Exp $

COMMENT =	tools for LiDAR processing
DISTNAME =	lastools-0.20170108
GH_ACCOUNT =	LAStools
GH_PROJECT =	LAStools
GH_TAGNAME =	f00fa125075ea984993057c5916d746cb605835c
REVISION =	3

CATEGORIES =	converters textproc devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

#c++11
COMPILER =		base-clang ports-gcc base-gcc

MAKE_FLAGS =	COMPILER="${CXX}" \
		LINKER="${CXX}"
# building with ports-gcc generates the following error: 
# warning.h:32:2: error: #error This file requires compiler
# and library support for the ISO C++ 2011 standard.
CXXFLAGS +=	-std=c++11

post-patch:
	find ${WRKSRC} -name Makefile | xargs sed -i 's/-O3/${CXXFLAGS}/'

PROGS =	laszip lasinfo lasprecision las2txt txt2las las2las lasdiff lasmerge lasindex

do-install:
	${INSTALL_DATA} ${WRKSRC}/LASlib/src/liblas.a ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/LASlib/inc/*.hpp ${PREFIX}/include/
	${INSTALL_DATA} ${WRKSRC}/LASzip/src/{mydefs,laspoint,laszip,lasquantizer,lasattributer}.hpp \
		${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lastools/
.for f in ${PROGS}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${f} ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/bin/${f}_README.txt ${PREFIX}/share/doc/lastools/
.endfor

.include <bsd.port.mk>
