# $OpenBSD: Makefile,v 1.19 2018/07/18 10:46:54 bentley Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.3.4
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
