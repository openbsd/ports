# $OpenBSD: Makefile,v 1.22 2019/11/11 03:21:55 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.3.6
PKGNAME =		hubbub-${NETSURF_VERSION}
HOMEPAGE =		https://www.netsurf-browser.org/projects/hubbub/
REVISION =		0

SHARED_LIBS =		hubbub 3.0 #0.3.4

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1
WANTLIB += iconv parserutils

TEST_DEPENDS =		devel/json-c>=0.10

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
