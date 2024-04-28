COMMENT =	tools for LiDAR processing
GH_ACCOUNT =	LAStools
GH_PROJECT =	LAStools
GH_TAGNAME =	v2.0.3
REVISION =	0

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
