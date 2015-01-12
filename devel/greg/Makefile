# $OpenBSD: Makefile,v 1.1.1.1 2015/01/12 05:51:22 bcallah Exp $

V =		0.4.5
COMMENT =	PEG-based parser generator
DISTNAME =	${GH_PROJECT}-${V}
CATEGORIES =	devel

GH_ACCOUNT =	fasterthanlime
GH_PROJECT =	greg
GH_TAGNAME =	v${V}
GH_COMMIT =	e6b8bc461c0d948e97187d5ff6ea579d9addb7dc

HOMEPAGE =	https://github.com/fasterthanlime/greg
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_FLAGS =	OFLAGS="${CFLAGS} -DNDEBUG -DYY_MAIN"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/greg ${PREFIX}/bin/

.include <bsd.port.mk>
