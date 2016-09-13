# $OpenBSD: Makefile,v 1.29 2016/09/13 16:12:14 naddy Exp $

COMMENT=	re-encode many media file formats to Ogg Theora

N=		ffmpeg2theora
DISTNAME=	${N}-0.29
REVISION=	3
CATEGORIES=	multimedia
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.v2v.cc/~j/${N}/

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents in FFmpeg
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += avcodec avdevice avfilter avformat avutil c iconv m ogg postproc
WANTLIB += swscale theoradec theoraenc vorbis vorbisenc
WANTLIB += avresample opus pthread speex swresample vpx x264 x265

MASTER_SITES=	${HOMEPAGE}downloads/

LIB_DEPENDS=	converters/libiconv \
		graphics/ffmpeg>=20121026 \
		audio/libvorbis \
		multimedia/libtheora

MODULES=	devel/scons

MODSCONS_FLAGS=	libkate=0

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/${N} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/${N}.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
