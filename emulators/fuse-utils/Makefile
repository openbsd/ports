# $OpenBSD: Makefile,v 1.19 2014/06/09 08:55:16 bentley Exp $

COMMENT=		Free Unix Spectrum Emulator utilities

DISTNAME =		fuse-utils-1.1.1
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB += FLAC audiofile avcodec avformat avutil bz2 c crypto
WANTLIB += gcrypt glib-2.0 gpg-error gsm m mp3lame ogg opus orc-0.4
WANTLIB += pcre pthread schroedinger-1.0 speex ssl stdc++ swscale
WANTLIB += theoradec theoraenc vorbis vorbisenc vpx x264 xvidcore z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/libspectrum \
			graphics/ffmpeg
WANTLIB +=		spectrum>=5

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
