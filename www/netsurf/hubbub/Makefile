COMMENT =		HTML parser

NETSURF_PROJECT =	libhubbub
NETSURF_VERSION =	0.3.8
PKGNAME =		hubbub-${NETSURF_VERSION}
HOMEPAGE =		https://www.netsurf-browser.org/projects/hubbub/

SHARED_LIBS =		hubbub 3.1 #0.3.8

LIB_DEPENDS =		converters/libiconv \
			www/netsurf/libparserutils>=0.2.1
WANTLIB += iconv parserutils

BUILD_DEPENDS =		devel/gperf
TEST_DEPENDS =		devel/json-c>=0.10

pre-build:
	echo "CFLAGS += -I${LOCALBASE}/include" \
		> ${WRKSRC}/Makefile.config.override

.include <bsd.port.mk>
