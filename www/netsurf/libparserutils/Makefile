# $OpenBSD: Makefile,v 1.6 2014/04/28 09:02:15 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.2.0

CATEGORIES =		devel
SHARED_LIBS =		parserutils 2.0 #0.2.0

MODULES =		converters/libiconv

MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -liconv"

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
