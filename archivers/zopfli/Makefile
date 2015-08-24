# $OpenBSD: Makefile,v 1.3 2015/08/24 04:01:04 bentley Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		deflate-compatible compression format

V =			1.0.0
DISTNAME =		zopfli-$V
REVISION =		0

CATEGORIES =		archivers

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

GH_ACCOUNT =		google
GH_PROJECT =		zopfli
GH_TAGNAME =		zopfli-$V

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

MAKE_FILE =		makefile

ALL_TARGET =		make

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zopfli ${PREFIX}/bin

.include <bsd.port.mk>
