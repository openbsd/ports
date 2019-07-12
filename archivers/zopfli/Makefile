# $OpenBSD: Makefile,v 1.6 2019/07/12 20:43:30 sthen Exp $

COMMENT =		deflate-compatible compression format

GH_ACCOUNT =		google
GH_PROJECT =		zopfli
GH_TAGNAME =		zopfli-1.0.2
DISTNAME =		${GH_TAGNAME}

CATEGORIES =		archivers

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" \
			COPTFLAGS="${CFLAGS}" CXXOPTFLAGS="${CXXFLAGS}"

NO_TEST =		Yes
ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zopfli ${PREFIX}/bin

.include <bsd.port.mk>
