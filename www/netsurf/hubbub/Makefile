# $OpenBSD: Makefile,v 1.14 2015/03/30 03:01:51 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.3.1
PKGNAME =		hubbub-${NETSURF_VERSION}
HOMEPAGE =		http://www.netsurf-browser.org/projects/hubbub/

SHARED_LIBS =		hubbub 2.0 #0.3.1

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.2.1
WANTLIB += parserutils

TEST_DEPENDS =		devel/json-c>=0.10

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
