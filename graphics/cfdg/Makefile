# $OpenBSD: Makefile,v 1.19 2017/07/27 09:55:45 sthen Exp $

COMMENT =	Context Free Design Grammar

VERSION =	3.0.9
DISTNAME =	ContextFreeSource${VERSION}
PKGNAME =	cfdg-${VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	http://www.contextfreeart.org/

MAINTAINER =	jared r r spiegel <jrrs@ice-nine.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.contextfreeart.org/download/
EXTRACT_SUFX =	.tgz

WANTLIB =	c m png z
WANTLIB += ${COMPILER_LIBCXX}

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	graphics/png

COMPILER =	gcc

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/context-free-${VERSION}

MAKE_ENV +=	CPPFLAGS="${CFLAGS}"
MAKE_FLAGS =	CXX=c++ CC=c++ COMPILER_LIBCXX="${LIBCXX}"

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
