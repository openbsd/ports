# $OpenBSD: Makefile,v 1.11 2013/05/03 07:38:36 ajacoutot Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.2.0
PKGNAME =		hubbub-${NETSURF_VERSION}
HOMEPAGE =		http://www.netsurf-browser.org/projects/hubbub/
REVISION =		0

CATEGORIES =		www
SHARED_LIBS =		hubbub 1.1 #0.2.0

MODULES =		converters/libiconv

LIB_DEPENDS =		www/netsurf/libparserutils>=0.1.2
WANTLIB += parserutils

TEST_DEPENDS =		devel/json-c>=0.10

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
