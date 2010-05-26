# $OpenBSD: Makefile,v 1.8 2010/05/26 23:16:16 jakemsr Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-2.0.2
PKGNAME=	${DISTNAME}p0
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

LIB_DEPENDS=	avcodec.>=14,avformat.>=13,avutil.>=7,swscale.>=2:ffmpeg->=20100512:graphics/ffmpeg \
		png.>=6::graphics/png \
		jpeg::graphics/jpeg

WANTLIB=	bz2 c faac faad gsm m mp3lame ogg pthread \
		stdc++ theora vorbis vorbisenc x264 z \
		oil-0.3 schroedinger-1.0 speex

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
