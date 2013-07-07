# $OpenBSD: Makefile,v 1.1.1.1 2013/07/07 17:57:44 bentley Exp $

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
