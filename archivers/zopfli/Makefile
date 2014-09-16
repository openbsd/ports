# $OpenBSD: Makefile,v 1.2 2014/09/16 19:56:09 miod Exp $

# __builtin_clz
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		deflate-compatible compression format

DISTNAME =		zopfli-1.0.0

CATEGORIES =		archivers

HOMEPAGE =		https://code.google.com/p/zopfli/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =		https://zopfli.googlecode.com/files/
EXTRACT_SUFX =		.zip

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

MAKE_FILE =		makefile

ALL_TARGET =		make

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zopfli ${PREFIX}/bin

.include <bsd.port.mk>
