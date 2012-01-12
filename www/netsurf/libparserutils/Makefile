# $OpenBSD: Makefile,v 1.3 2012/01/12 03:17:08 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.1.1

CATEGORIES =		devel
SHARED_LIBS =		parserutils 1.0 #0.1.1

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
