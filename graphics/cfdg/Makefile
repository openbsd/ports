# $OpenBSD: Makefile,v 1.15 2017/05/13 09:49:50 espie Exp $

COMMENT =	Context Free Design Grammar

VERSION =	3.0.9
DISTNAME =	ContextFreeSource${VERSION}
PKGNAME =	cfdg-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	http://www.contextfreeart.org/

MAINTAINER =	jared r r spiegel <jrrs@ice-nine.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.contextfreeart.org/download/
EXTRACT_SUFX =	.tgz

WANTLIB =	c m png z

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	graphics/png

WANT_CXX =	base gcc
MODGCC4_LANGS =	c c++

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/context-free-${VERSION}

MAKE_ENV +=	CPPFLAGS="${CFLAGS}"
MAKE_FLAGS =	CXX=c++ CC=c++ LIBCXX="${LIBCXX}"

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
