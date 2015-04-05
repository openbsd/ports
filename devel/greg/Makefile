# $OpenBSD: Makefile,v 1.2 2015/04/05 13:31:13 sthen Exp $

V =		0.4.5
COMMENT =	PEG-based parser generator
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel

GH_ACCOUNT =	fasterthanlime
GH_PROJECT =	greg
GH_TAGNAME =	v${V}

HOMEPAGE =	https://github.com/fasterthanlime/greg
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_FLAGS =	OFLAGS="${CFLAGS} -DNDEBUG -DYY_MAIN"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/greg ${PREFIX}/bin/

.include <bsd.port.mk>
