# $OpenBSD: Makefile,v 1.2 2011/07/18 20:02:54 landry Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.1.0

CATEGORIES =		devel
SHARED_LIBS =		parserutils 1.0 #0.1.0

pre-build:
	echo "CFLAGS += -DWITH_ICONV_FILTER" \
		> ${WRKSRC}/build/Makefile.config.override

.include <bsd.port.mk>
