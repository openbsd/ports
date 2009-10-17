# $OpenBSD: Makefile,v 1.6 2009/10/17 16:22:21 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	fast and stable PHP opcode cacher

VERSION=	1.3.0
DISTNAME=	xcache-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www
MASTER_SITES=	http://xcache.lighttpd.net/pub/Releases/${VERSION}/

HOMEPAGE=	http://xcache.lighttpd.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			::www/php5/core \
			:re2c->=0.13.4:devel/re2c
RUN_DEPENDS+=		::www/php5/core

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-xcache
CONFIGURE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

FLAVORS=	coverager
FLAVOR?=

.if ${FLAVOR:L:Mcoverager}
CONFIGURE_ARGS+=	--enable-xcache-coverager
.endif

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/xcache
	${INSTALL_DATA_DIR} ${PREFIX}/xcache/admin
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	cd ${WRKSRC}/admin && ${INSTALL_DATA} * ${PREFIX}/xcache/admin
	${INSTALL_DATA} ${WRKSRC}/xcache.ini ${PREFIX}/conf/php5.sample/xcache.ini.dist

.if ${FLAVOR:L:Mcoverager}
	${INSTALL_DATA_DIR} ${PREFIX}/xcache/coverager
	cd ${WRKSRC}/coverager && ${INSTALL_DATA} * ${PREFIX}/xcache/coverager
.endif

.include <bsd.port.mk>
