# $OpenBSD: Makefile,v 1.9 2009/07/19 22:49:12 sthen Exp $

COMMENT=	reencode many media file formats to Ogg Theora

DISTNAME=	ffmpeg2theora-0.19
PKGNAME=	${DISTNAME}p3
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/ffmpeg2theora/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	patents in ffmpeg
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		bz2 c m ogg pthread a52 faac faad mp3lame x264 z \
			oil-0.3 schroedinger-1.0

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	avcodec.>=13.1,avformat.>=12,avutil.>=6,swscale.>=1:ffmpeg->=20080620p10:graphics/ffmpeg \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		theora.>=2::multimedia/libtheora

SEPARATE_BUILD=	flavored
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	CPPFLAGS=-pthread LDFLAGS=-pthread

.include <bsd.port.mk>
