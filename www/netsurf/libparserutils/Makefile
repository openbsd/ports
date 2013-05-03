# $OpenBSD: Makefile,v 1.5 2013/05/03 07:32:34 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.1.2

CATEGORIES =		devel
SHARED_LIBS =		parserutils 1.0 #0.1.2

MODULES =		converters/libiconv

MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -liconv"

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
