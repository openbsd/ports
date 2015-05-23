# $OpenBSD: Makefile,v 1.3 2015/05/23 16:34:40 czarkoff Exp $

V =		0.4.5
COMMENT =	PEG-based parser generator
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel

GH_ACCOUNT =	fasterthanlime
GH_PROJECT =	greg
GH_TAGNAME =	v${V}

MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_FLAGS =	OFLAGS="${CFLAGS} -DNDEBUG -DYY_MAIN"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/greg ${PREFIX}/bin/

.include <bsd.port.mk>
