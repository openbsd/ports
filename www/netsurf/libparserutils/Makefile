# $OpenBSD: Makefile,v 1.13 2019/11/11 03:21:56 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.2.4
REVISION =		0

CATEGORIES =		devel
SHARED_LIBS =		parserutils 2.0 #0.2.1

WANTLIB =		iconv

LIB_DEPENDS =		converters/libiconv

MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -liconv"

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
