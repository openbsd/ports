COMMENT =		multi-threaded HTTP benchmark and regression tester

DISTNAME =		siege-4.1.7
REVISION =		0

CATEGORIES =		benchmarks www

HOMEPAGE =		https://www.joedog.org/index/siege-home

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto pthread ssl z

SITES =			http://download.joedog.org/siege/

MAKE_FLAGS =		localstatedir=${LOCALSTATEDIR}
CFLAGS +=		-DHAVE_STRCASECMP -DHAVE_STRNCASECMP

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/log/siege

CONFIGURE_STYLE =	gnu

FIX_CRLF_FILES =	src/ssl.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/siege
	${INSTALL_DATA} ${WRKSRC}/doc/urls.txt ${WRKSRC}/doc/siegerc \
	    ${PREFIX}/share/examples/siege

.include <bsd.port.mk>
