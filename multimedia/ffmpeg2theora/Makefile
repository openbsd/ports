# $OpenBSD: Makefile,v 1.21 2011/08/21 08:46:19 ajacoutot Exp $

COMMENT=	re-encode many media file formats to Ogg Theora

N=		ffmpeg2theora
DISTNAME=	${N}-0.28
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/${N}/

# GPLv3
PERMIT_PACKAGE_CDROM=	patents in FFmpeg
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xfixes avcodec avdevice avformat avutil bz2
WANTLIB += c gsm m mp3lame ogg orc-0.4 postproc pthread
WANTLIB += schroedinger-1.0 sndio speex swscale theoradec theoraenc
WANTLIB += vorbis vorbisenc vpx x264 z

MASTER_SITES=	${HOMEPAGE}downloads/

LIB_DEPENDS=	graphics/ffmpeg>=20110408p5 \
		audio/libvorbis \
		multimedia/libtheora

MODULES=	devel/scons converters/libiconv

MODSCONS_FLAGS=	libkate=0
USE_GROFF=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/${N}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
