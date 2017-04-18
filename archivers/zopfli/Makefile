# $OpenBSD: Makefile,v 1.4 2017/04/18 13:09:23 sthen Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		deflate-compatible compression format

GH_ACCOUNT =		google
GH_PROJECT =		zopfli
GH_TAGNAME =		zopfli-1.0.1
DISTNAME =		${GH_TAGNAME}

CATEGORIES =		archivers

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MAKE_FLAGS =		CC="${CC}" CXX="${CXX}" \
			COPTFLAGS="${CFLAGS}" CXXOPTFLAGS="${CXXFLAGS}"

NO_TEST =		Yes
ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zopfli ${PREFIX}/bin

.include <bsd.port.mk>
