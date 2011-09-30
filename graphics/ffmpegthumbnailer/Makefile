# $OpenBSD: Makefile,v 1.17 2011/09/30 09:18:17 dcoppa Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.7
CATEGORIES=	graphics multimedia
MASTER_SITES=	http://ffmpegthumbnailer.googlecode.com/files/

SHARED_LIBS=	ffmpegthumbnailer	4.1

HOMEPAGE=	http://code.google.com/p/ffmpegthumbnailer

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

LIB_DEPENDS=	graphics/ffmpeg>=20100512 \
		graphics/png \
		graphics/jpeg

WANTLIB=	avcodec avformat avutil bz2 c gsm jpeg m mp3lame ogg \
		orc-0.4 png pthread schroedinger-1.0 speex stdc++ \
		swscale theoradec theoraenc vorbis vorbisenc vpx x264 \
		z

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.68
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS= --disable-as-needed

.include <bsd.port.mk>
