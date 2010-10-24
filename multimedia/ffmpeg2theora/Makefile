# $OpenBSD: Makefile,v 1.13 2010/10/24 21:40:38 sthen Exp $

COMMENT=	reencode many media file formats to Ogg Theora

N=		ffmpeg2theora
DISTNAME=	${N}-0.26
REVISION=	0
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/${N}/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPLv3
PERMIT_PACKAGE_CDROM=	patents in ffmpeg
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xfixes bz2 c gsm iconv m ogg pthread
WANTLIB += faac faad mp3lame orc-0.4 sndio speex
WANTLIB += schroedinger-1.0 x264 z avcodec avdevice avformat
WANTLIB += avutil postproc swscale vorbis vorbisenc
WANTLIB += theora theoradec theoraenc

MASTER_SITES=	${HOMEPAGE}downloads/

LIB_DEPENDS=	:ffmpeg->=20080620p10:graphics/ffmpeg \
		::audio/libvorbis \
		::multimedia/libtheora

MODULES=	devel/scons

MODSCONS_FLAGS=	libkate=0
USE_GROFF=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/${N}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
