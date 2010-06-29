# $OpenBSD: Makefile,v 1.1.1.1 2010/06/29 20:11:13 landry Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.0.2

CATEGORIES =		devel
SHARED_LIBS =		parserutils 0.0 #0.0.2

pre-build:
	echo "CFLAGS += -DWITH_ICONV_FILTER" \
		> ${WRKSRC}/build/Makefile.config.override

.include <bsd.port.mk>
