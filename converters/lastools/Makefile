# $OpenBSD: Makefile,v 1.13 2020/03/26 08:23:53 landry Exp $

COMMENT =	tools for LiDAR processing
DISTNAME =	lastools-0.20200310
GH_ACCOUNT =	LAStools
GH_PROJECT =	LAStools
GH_COMMIT =	978d1709a4e15a84deb09f65475554f56172e831

CATEGORIES =	converters textproc devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MODULES =	devel/cmake
#c++11
COMPILER =	base-clang ports-gcc

PROGS =	laszip lasinfo lasprecision las2txt txt2las las2las lasdiff lasmerge lasindex
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lastools/
.for f in ${PROGS}
	${INSTALL_DATA} ${WRKSRC}/bin/${f}_README.txt ${PREFIX}/share/doc/lastools/
.endfor

do-test:
	${WRKBUILD}/src/lasinfo ${WRKSRC}/data/test.laz

.include <bsd.port.mk>
