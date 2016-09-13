# $OpenBSD: Makefile,v 1.17 2016/09/13 19:15:03 naddy Exp $

COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.3.3
PKGNAME =		hubbub-${NETSURF_VERSION}
HOMEPAGE =		http://www.netsurf-browser.org/projects/hubbub/

SHARED_LIBS =		hubbub 2.0 #0.3.1

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1
WANTLIB += iconv parserutils

TEST_DEPENDS =		devel/json-c>=0.10

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
