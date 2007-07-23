# $OpenBSD: Makefile,v 1.1.1.1 2007/07/23 18:57:07 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	"fast and stable PHP opcode cache"

VERSION=	1.2.1
DISTNAME=	xcache-${VERSION}
CATEGORIES=	www
MASTER_SITES=	http://xcache.lighttpd.net/pub/Releases/${VERSION}/

HOMEPAGE=	http://trac.lighttpd.net/xcache/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.59

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			::www/php5/core
RUN_DEPENDS+=		::www/php5/core

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-xcache
CONFIGURE_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST}

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
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${PREFIX}/xcache
	${INSTALL_DATA} ${WRKSRC}/xcache.ini ${PREFIX}/xcache

	${INSTALL_DATA_DIR} ${PREFIX}/xcache/admin
	cd ${WRKSRC}/admin && ${INSTALL_DATA} * ${PREFIX}/xcache/admin

.if ${FLAVOR:L:Mcoverager}
	${INSTALL_DATA_DIR} ${PREFIX}/xcache/coverager
	cd ${WRKSRC}/coverager && ${INSTALL_DATA} * ${PREFIX}/xcache/coverager
.endif

.include <bsd.port.mk>
