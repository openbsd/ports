# $OpenBSD: Makefile,v 1.18 2011/04/18 23:27:31 sthen Exp $

COMMENT=	reencode many media file formats to Ogg Theora

N=		ffmpeg2theora
DISTNAME=	${N}-0.27
REVISION=	2
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/${N}/

# GPLv3
PERMIT_PACKAGE_CDROM=	patents in ffmpeg
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xfixes avcodec avdevice avformat avutil bz2
WANTLIB += c faac gsm iconv m mp3lame ogg orc-0.4 postproc pthread
WANTLIB += schroedinger-1.0 sndio speex swscale theoradec theoraenc
WANTLIB += vorbis vorbisenc vpx x264 z

MASTER_SITES=	${HOMEPAGE}downloads/

LIB_DEPENDS=	graphics/ffmpeg>=20080620p10 \
		audio/libvorbis \
		multimedia/libtheora

MODULES=	devel/scons

MODSCONS_FLAGS=	libkate=0
USE_GROFF=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/${N}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
