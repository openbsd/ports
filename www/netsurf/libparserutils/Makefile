# $OpenBSD: Makefile,v 1.11 2018/07/18 10:46:54 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.2.3
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
