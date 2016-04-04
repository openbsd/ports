# $OpenBSD: Makefile,v 1.1.1.1 2016/04/04 11:26:22 jca Exp $

COMMENT =	decompressor for mozilla lz4json format

DISTNAME =	lz4json-0.0.20141228
GH_ACCOUNT =	andikleen
GH_PROJECT =	lz4json
GH_COMMIT =	e3e6365ded1b5dcfe1ce69ce2c764dd010526c81

CATEGORIES =	archivers

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lz4

LIB_DEPENDS =	archivers/lz4

MAKE_FLAGS =	CFLAGS="-Wall ${CFLAGS}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -llz4 ${LDFLAGS}"

ALL_TARGET =

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lz4jsoncat ${PREFIX}/bin

.include <bsd.port.mk>
