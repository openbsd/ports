# $OpenBSD: Makefile,v 1.1.1.1 2008/01/06 19:25:47 landry Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-1.1.3
CATEGORIES=	graphics multimedia
HOMEPAGE=	http://code.google.com/p/ffmpegthumbnailer

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ffmpegthumbnailer.googlecode.com/files/

LIB_DEPENDS=	avcodec.>=10,avformat.>=10,avutil.>=4::graphics/ffmpeg \
		png.>=6::graphics/png

WANTLIB=	X11 Xext a52 c faac faad m mp3lame ogg ossaudio pthread \
		stdc++ theora vorbis vorbisenc x264 z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
