# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:28 sthen Exp $

COMMENT =	decompressor for mozilla lz4json format

GH_ACCOUNT =	andikleen
GH_PROJECT =	lz4json
GH_TAGNAME =	v2

CATEGORIES =	archivers

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB += c lz4

LIB_DEPENDS =	archivers/lz4

MAKE_FLAGS =	CFLAGS="-Wall ${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -llz4 ${LDFLAGS}"

ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lz4jsoncat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lz4jsoncat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
