# $OpenBSD: Makefile,v 1.1.1.1 2019/06/28 06:45:23 bentley Exp $

COMMENT =	assembler for various ARM and MIPS platforms

GH_ACCOUNT =	Kingcom
GH_PROJECT =	armips
GH_TAGNAME =	v0.10.0

CATEGORIES =	devel

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/armips ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/armips
	${INSTALL_DATA} ${WRKSRC}/Readme.md ${WRKSRC}/LICENSE.txt \
		${PREFIX}/share/doc/armips

.include <bsd.port.mk>
