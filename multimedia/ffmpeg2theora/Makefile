# $OpenBSD: Makefile,v 1.11 2010/08/25 23:27:21 sthen Exp $

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

WANTLIB=		X11 Xext Xfixes bz2 c gsm iconv m ogg pthread \
			faac faad mp3lame orc-0.4 sndio speex \
			schroedinger-1.0 x264 z

MASTER_SITES=	${HOMEPAGE}downloads/

LIB_DEPENDS=	avcodec.>=13.1,avdevice.>=3.0,avformat.>=12,avutil.>=6,postproc.>=13,swscale.>=1:ffmpeg->=20080620p10:graphics/ffmpeg \
		vorbis.>=5,vorbisenc.>=2::audio/libvorbis \
		theora.>=2,theoradec.>=1,theoraenc.>=1::multimedia/libtheora

MODULES=	devel/scons

MODSCONS_FLAGS=	libkate=0

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/${N}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
