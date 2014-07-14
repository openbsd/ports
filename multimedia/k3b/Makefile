# $OpenBSD: Makefile,v 1.29 2014/07/14 09:17:57 zhuk Exp $

SHARED_ONLY =		Yes

COMMENT =		CD/DVD creator

DISTNAME =		k3b-1.0.4
REVISION=		21
CATEGORIES =		multimedia

SHARED_LIBS =		k3b	0.0	# 3.0
SHARED_LIBS +=		k3bdevice	0.0	# 5.0

HOMEPAGE =		http://k3b.plainblack.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  FLAC FLAC++ ICE SM X11 Xext Xfixes Xrender Xt
WANTLIB += art_lgpl_2 avcodec avformat avutil bz2 c crypto
WANTLIB += dvdread expat fam fontconfig freetype gsm idn jpeg
WANTLIB += m mad mp3lame mpcdec
WANTLIB += ogg opus orc-0.4 png pthread samplerate schroedinger-1.0
WANTLIB += sndfile speex ssl stdc++ tag theoradec theoraenc util vorbis
WANTLIB += vorbisenc vorbisfile vpx x264 xcb xvidcore z
WANTLIB += ${KDE}/DCOP ${KDE}/artsc ${KDE}/kdecore ${KDE}/kdefx
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts
WANTLIB += ${KDE}/kwalletclient

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=k3b/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde devel/gettext

RUN_DEPENDS =		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			audio/normalize \
			misc/cdrdao \
			audio/sox \
			multimedia/transcode \
			x11/gtk+2,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		audio/flac \
			audio/lame \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/taglib \
			devel/libdvdread \
			graphics/ffmpeg>=20121026 \
			graphics/jpeg \
			x11/kde/libs3

USE_GMAKE =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-qt-dir=${MODQT_QTDIR} \
			${MODQT_CONFIGURE_ARGS} \
			${MODKDE_CONFIGURE_ARGS} \
			--without-musicbrainz \
			--without-resmgr \
			--without-hal \
			--without-alsa \
			--without-cdrecord-suid-root

CONFIGURE_ENV =		${MODKDE_CONFIGURE_ENV} \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# For QSettings to write its setup
PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
