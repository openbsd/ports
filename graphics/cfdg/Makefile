# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:57 sthen Exp $

COMMENT =	Context Free Design Grammar

VERSION =	3.0.11
DISTNAME =	ContextFreeSource${VERSION}
PKGNAME =	cfdg-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://www.contextfreeart.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.contextfreeart.org/download/
EXTRACT_SUFX =	.tgz

WANTLIB += ${COMPILER_LIBCXX} c m png z

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	graphics/png

COMPILER =	base-clang ports-gcc

USE_GMAKE =	Yes

# 3.0.11 is a bad tarball...
WRKDIST =	${WRKDIR}

MAKE_ENV +=	CPPFLAGS="${CFLAGS}"
MAKE_FLAGS =	CXX="${CXX}" CC="${CXX}" COMPILER_LIBCXX="${LIBCXX}"

EXAMPLEDIR =	${PREFIX}/share/examples/cfdg

# Work-around bad installation of FlexLexer.h
post-extract:
	test -f /usr/include/FlexLexer.h || \
		cp /usr/include/g++/FlexLexer.h ${WRKSRC}/src-unix/

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cfdg ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/input
	${INSTALL_DATA} ${WRKSRC}/README ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/input/*.cfdg ${EXAMPLEDIR}/input

.include <bsd.port.mk>
