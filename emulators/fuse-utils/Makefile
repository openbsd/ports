# $OpenBSD: Makefile,v 1.20 2015/04/28 06:35:06 ajacoutot Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME =		fuse-utils-1.1.1
REVISION=		0
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB += FLAC audiofile avcodec avformat avutil bz2 c crypto
WANTLIB += gcrypt glib-2.0 gpg-error gsm m mp3lame ogg opus
WANTLIB += pcre pthread speex ssl stdc++ swscale vorbis vorbisenc
WANTLIB += vpx x264 xvidcore z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/libspectrum \
			graphics/ffmpeg
WANTLIB +=		spectrum>=5

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
