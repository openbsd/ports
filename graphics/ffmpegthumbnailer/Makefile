# $OpenBSD: Makefile,v 1.11 2010/11/09 18:22:26 espie Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.2
REVISION=	1
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

LIB_DEPENDS=	:ffmpeg->=20100512:graphics/ffmpeg \
		::graphics/png \
		::graphics/jpeg

WANTLIB=	bz2 c faac faad gsm m mp3lame ogg pthread \
		stdc++ theora vorbis vorbisenc x264 z \
		orc-0.4 schroedinger-1.0 speex \
		avcodec.>=14 avformat.>=13 avutil.>=7 swscale.>=2 \
		png.>=6 jpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
