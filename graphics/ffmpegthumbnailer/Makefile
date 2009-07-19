# $OpenBSD: Makefile,v 1.3 2009/07/19 12:42:04 sthen Exp $

COMMENT=	lightweight video thumbnailer for file managers

DISTNAME=	ffmpegthumbnailer-1.1.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics multimedia
HOMEPAGE=	http://code.google.com/p/ffmpegthumbnailer

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ffmpegthumbnailer.googlecode.com/files/

LIB_DEPENDS=	avcodec.>=10,avformat.>=10,avutil.>=4,swscale.>=1::graphics/ffmpeg \
		png.>=6::graphics/png

WANTLIB=	a52 bz2 c faac faad m mp3lame ogg pthread \
		stdc++ theora vorbis vorbisenc x264 z \
		oil-0.3 schroedinger-1.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng"

.include <bsd.port.mk>
