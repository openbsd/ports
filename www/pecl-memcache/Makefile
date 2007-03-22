# $OpenBSD: Makefile,v 1.5 2007/03/22 22:48:04 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	"PHP interface to memcached"

DISTNAME=	memcache-1.5
PKGNAME=	pecl-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/memcache

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.4

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	:php5-core-*:www/php5/core

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-zlib-dir=/usr
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST}
SUBST_VARS=	LOCALBASE

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pecl-memcache
	@${INSTALL_DATA} ${WRKSRC}/example.php \
		${PREFIX}/share/examples/pecl-memcache

.include <bsd.port.mk>
