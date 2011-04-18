# $OpenBSD: Makefile,v 1.14 2011/04/18 23:27:31 sthen Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.2
REVISION=	3
CATEGORIES=	graphics multimedia
MASTER_SITES=	http://ffmpegthumbnailer.googlecode.com/files/

SHARED_LIBS=	ffmpegthumbnailer	4.0

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

WANTLIB=	avcodec avformat avutil bz2 c faac gsm jpeg m mp3lame \
		ogg orc-0.4 png pthread schroedinger-1.0 speex stdc++ \
		swscale theoradec theoraenc vorbis vorbisenc vpx x264 \
		z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
