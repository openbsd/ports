# $OpenBSD: Makefile,v 1.1.1.1 2006/10/13 14:58:42 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Alternative PHP Cache"

DISTNAME=	APC-3.0.12p2
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/APC

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VER=	2.59
AUTOMAKE_VER=	1.4

BUILD_DEPENDS=	:php5-pear-*:www/php5/core,-pear \
		::devel/autoconf/${AUTOCONF_VER} \
		::devel/automake/${AUTOMAKE_VER} \
		::devel/libtool
RUN_DEPENDS=	:php5-core-*:www/php5/core

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-apc \
		--enable-apc-mmap \
		--with-apxs \
		--with-php-config=$(LOCALBASE)/bin/php-config

CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VER} \
		AUTOCONF_VERSION=${AUTOCONF_VER}

PREFIX=		/var/www
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST}
SUBST_VARS=	LOCALBASE

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-configure:
	@perl -pi -e "s,-rpath \\$$\\(phplibdir\\),-rpath ${LOCALBASE}/lib,g" \
		${WRKSRC}/Makefile

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/pecl-APC
	@${INSTALL_DATA} ${WRKSRC}/apc.php ${WRKSRC}/INSTALL \
		${PREFIX}/pecl-APC

.include <bsd.port.mk>
