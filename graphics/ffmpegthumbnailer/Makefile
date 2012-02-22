# $OpenBSD: Makefile,v 1.18 2012/02/22 08:32:25 dcoppa Exp $

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

WANTLIB=	avcodec avformat avutil bz2 c gsm jpeg m mp3lame ogg \
		orc-0.4 png pthread schroedinger-1.0 speex stdc++ \
		swscale theoradec theoraenc vorbis vorbisenc vpx x264 \
		z

LIB_DEPENDS=	graphics/ffmpeg>=20100512 \
		graphics/jpeg \
		graphics/png

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --disable-as-needed

.include <bsd.port.mk>
