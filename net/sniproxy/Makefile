# $OpenBSD: Makefile,v 1.2 2021/02/09 15:06:50 tb Exp $

COMMENT =	name-based proxying of HTTPS without decrypting traffic

GH_ACCOUNT =	dlundquist
GH_PROJECT =	sniproxy
GH_TAGNAME =	0.6.0

REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://github.com/dlundquist/sniproxy

MAINTAINER =	Renaud Allard <renaud@allard.it>

# BSD
PERMIT_PACKAGE = Yes

WANTLIB += c ev pcre udns

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	net/udns \
		devel/libev \
		devel/pcre

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
AUTORECONF =		./autogen.sh

CONFIGURE_ARGS =	--disable-rpath
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

TEST_ENV =	SNI_PROXY_PORT=18080 \
		TEST_HTTPD_PORT=18081 \
		TEST_FALLBACK_PORT=18082

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sniproxy
	${INSTALL_DATA} ${WRKSRC}/sniproxy.conf \
		${PREFIX}/share/examples/sniproxy

.include <bsd.port.mk>
