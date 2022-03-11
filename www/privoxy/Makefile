COMMENT=	web proxy with advanced filtering capabilities

V=		3.0.33
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www

HOMEPAGE=	https://www.privoxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto pcre pcreposix pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz
FIX_EXTRACT_PERMISSIONS=	Yes

# there are tests which can be run with tools/privoxy-regression-test.pl
# they require privoxy to be running, and http_proxy=http://127.0.0.1:8118/
NO_TEST=	Yes

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--with-docbook=no \
		--with-openssl
CONFIGURE_ENV=	CPPFLAGS="-Dunix -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
PRIVOXYCONF=	${SYSCONFDIR}/privoxy/
SUBST_VARS=	PRIVOXYCONF

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader

FAKE_FLAGS=	CONF_DEST=${PREFIX}/share/examples/privoxy

post-install:
	${SUBST_CMD} ${PREFIX}/share/examples/privoxy/config
	rm ${PREFIX}/share/examples/privoxy/config.beforesubst
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin

.include <bsd.port.mk>
