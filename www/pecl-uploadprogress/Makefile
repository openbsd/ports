# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:52 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP upload progress meter

DISTNAME=	uploadprogress-1.0.1
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/uploadprogress/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	www/php5/core

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/pecl-uploadprogress
	${INSTALL_DATA} ${WRKSRC}/examples/*.php \
		${PREFIX}/pecl-uploadprogress
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=uploadprogress.so" > \
		${PREFIX}/conf/php5.sample/uploadprogress.ini

.include <bsd.port.mk>
