# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:49 sthen Exp $

COMMENT =	tools for LiDAR processing
DISTNAME =	lastools-0.20181229
GH_ACCOUNT =	LAStools
GH_PROJECT =	LAStools
GH_TAGNAME =	384056a5ba27edba629da1328cc7ac5020c3d9d4

CATEGORIES =	converters textproc devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

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
	${INSTALL_DATA} ${WRKSRC}/LASzip/src/{mydefs,laspoint,laszip,lasquantizer,lasattributer,laszip_decompress_selective_v3,bytestream{in,out}_array}.hpp \
		${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lastools/
.for f in ${PROGS}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${f} ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/bin/${f}_README.txt ${PREFIX}/share/doc/lastools/
.endfor

do-test:
	${WRKSRC}/bin/lasinfo ${WRKSRC}/data/test.laz

.include <bsd.port.mk>
