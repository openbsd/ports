# $OpenBSD: Makefile,v 1.5 2011/07/08 20:19:14 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-2.3.0
PKGNAME=	pecl-${DISTNAME}
REVISION=	1
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

MODULES=	lang/php converters/libiconv

BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	graphics/ImageMagick
WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt bz2 expat fontconfig freetype \
		jasper jbig jpeg lcms m png pthread-stubs tiff \
		wmflite xcb xml2 z MagickCore MagickWand

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	imagick
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
