# $OpenBSD: Makefile,v 1.37 2020/02/23 18:39:51 sthen Exp $

COMMENT=	web proxy with advanced filtering capabilities

V=		3.0.28
DISTNAME=	privoxy-${V}-stable
PKGNAME=	privoxy-${V}
CATEGORIES=	www

HOMEPAGE=	https://www.privoxy.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pcre pcreposix pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ijbswa/}
EXTRACT_SUFX=	-src.tar.gz

NO_TEST=	Yes

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--with-docbook=no
CONFIGURE_ENV=	CPPFLAGS="-Dunix -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader

FAKE_FLAGS=	CONF_DEST=${PREFIX}/share/examples/privoxy

post-install:
	${SUBST_CMD} ${PREFIX}/share/examples/privoxy/config
	rm ${PREFIX}/share/examples/privoxy/config.beforesubst
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin

.include <bsd.port.mk>
