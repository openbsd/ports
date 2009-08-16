# $OpenBSD: Makefile,v 1.1.1.1 2009/08/16 05:50:30 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-2.3.0
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	graphics www

HOMEPAGE=	http://pecl.php.net/package/imagick/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	MagickCore,MagickWand::graphics/ImageMagick
RUN_DEPENDS=	:php5-core-*:www/php5/core
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt bz2 expat fontconfig freetype \
		iconv jasper jbig jpeg lcms m png pthread-stubs tiff \
		wmflite xcb xml2 z

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
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=imagick.so" > \
		${PREFIX}/conf/php5.sample/imagick.ini

.include <bsd.port.mk>
