# $OpenBSD: Makefile,v 1.16 2011/11/16 15:56:37 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for ffmpeg
DISTNAME=	ffmpeg-php-0.6.0
REVISION=	11
EXTRACT_SUFX=	.tbz2
CATEGORIES=	multimedia www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ffmpeg-php/}

HOMEPAGE=	http://ffmpeg-php.sourceforge.net/

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

MODULES=	converters/libiconv lang/php

BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	graphics/ffmpeg \
		graphics/gd
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd

WANTLIB += avcodec avformat avutil bz2 expat fontconfig freetype gd
WANTLIB += gsm jpeg m mp3lame ogg orc-0.4 png schroedinger-1.0
WANTLIB += speex swscale theoradec theoraenc vorbis vorbisenc
WANTLIB += vpx x264 z

CONFIGURE_ARGS+=--enable-skip-gd-check
# force link to gd so $frame->toGDImage() works properly
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lgd -lfreetype" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libavcodec -I${LOCALBASE}/include/libavformat" \
		FFMPEG_LIBDIR="-L${LOCALBASE}/lib" \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_STYLE=gnu

MODPHP_DO_SAMPLE=	ffmpeg
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
