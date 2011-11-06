# $OpenBSD: Makefile,v 1.10 2011/11/06 18:57:58 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-2.3.0
PKGNAME=	pecl-${DISTNAME}
REVISION=	6
CATEGORIES=	graphics www

HOMEPAGE=	http://pecl.php.net/package/imagick/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += MagickCore MagickWand bz2 djvulibre fftw3 jasper jbig
WANTLIB += jpeg lcms ltdl lzma m png tiff z
WANTLIB += ICE SM X11 Xext Xt expat fontconfig freetype
WANTLIB += xcb xml2

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

MODULES=	converters/libiconv \
		lang/php

BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	graphics/ImageMagick

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	imagick
MESSAGE=		${PKGDIR}/MESSAGE
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
