# $OpenBSD: Makefile,v 1.4 2013/03/05 08:02:35 bentley Exp $

COMMENT =		utility library for parser building

NETSURF_PROJECT =	libparserutils
NETSURF_VERSION =	0.1.1
REVISION =		0

CATEGORIES =		devel
SHARED_LIBS =		parserutils 1.0 #0.1.1

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
