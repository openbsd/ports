# $OpenBSD: Makefile,v 1.12 2018/09/25 08:48:59 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.2.4

CATEGORIES =		devel
SHARED_LIBS =		parserutils 2.0 #0.2.1

WANTLIB =		iconv

LIB_DEPENDS =		converters/libiconv

MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -liconv"

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
