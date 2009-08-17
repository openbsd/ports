# $OpenBSD: Makefile,v 1.3 2009/08/17 00:24:38 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for ffmpeg
DISTNAME=	ffmpeg-php-0.6.0
PKGNAME=	${DISTNAME}p1
EXTRACT_SUFX=	.tbz2
CATEGORIES=	multimedia www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ffmpeg-php/}

HOMEPAGE=	http://ffmpeg-php.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

AUTOCONF_VERSION=2.62
AUTOMAKE_VERSION=1.9
FAKE_FLAGS=	INSTALL_ROOT=${WRKINST}
PREFIX=	/var/www
NO_REGRESS=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	avcodec,avformat,swscale::graphics/ffmpeg \
		gd::graphics/gd
RUN_DEPENDS=	:php5-core-*:www/php5/core \
		:php5-mbstring-*:www/php5/extensions,-gd
WANTLIB=	expat fontconfig freetype iconv jpeg m png z

CONFIGURE_ARGS+=--enable-skip-gd-check
# force link to gd so $frame->toGDImage() works properly
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lgd -lfreetype" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libavcodec -I${LOCALBASE}/include/libavformat" \
		FFMPEG_LIBDIR="-L${LOCALBASE}/lib" \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_STYLE=gnu

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=ffmpeg.so" > \
		${PREFIX}/conf/php5.sample/ffmpeg.ini

.include <bsd.port.mk>
