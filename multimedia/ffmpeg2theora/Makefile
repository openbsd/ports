# $OpenBSD: Makefile,v 1.7 2008/07/09 02:13:01 jakemsr Exp $

COMMENT=	reencode many media file formats to Ogg Theora

DISTNAME=	ffmpeg2theora-0.19
PKGNAME=	${DISTNAME}p1
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/ffmpeg2theora/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	patents in ffmpeg
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		bz2 c m ogg pthread a52 faac faad mp3lame x264 z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	avcodec.>=8,avformat.>=8,avutil.>=2,swscale.>=1::graphics/ffmpeg \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		theora.>=2::multimedia/libtheora

SEPARATE_BUILD=	flavored
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	CPPFLAGS=-pthread LDFLAGS=-pthread

.include <bsd.port.mk>
