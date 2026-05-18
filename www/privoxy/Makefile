COMMENT=	web proxy with advanced filtering capabilities

V=		4.1.0
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www

HOMEPAGE=	https://www.privoxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto pcre2-8 pcre2-posix pthread ssl z

SITES=		${SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz
FIX_EXTRACT_PERMISSIONS=	Yes

# there are tests which can be run with tools/privoxy-regression-test.pl
# they require privoxy to be running, and http_proxy=http://127.0.0.1:8118/
zNO_TEST=	Yes
TEST_DEPENDS=	net/curl

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	devel/pcre2

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.72
CONFIGURE_ARGS=	--with-docbook=no \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-Dunix -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
PRIVOXYCONF=	${SYSCONFDIR}/privoxy
SUBST_VARS=	PRIVOXYCONF

FAKE_FLAGS=	CONF_DEST=${PREFIX}/share/examples/privoxy

post-install:
	${SUBST_CMD} ${PREFIX}/share/examples/privoxy/config
	rm ${PREFIX}/share/examples/privoxy/config.beforesubst
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin

# more tests available using the curl test suite
do-test:
	cd ${WRKSRC}; \
		./privoxy --no-daemon --pidfile test.pid config${PATCHORIG} &
	cd ${WRKSRC}; ./tools/privoxy-regression-test.pl --verbose
	kill `cat ${WRKSRC}/test.pid`

.include <bsd.port.mk>
