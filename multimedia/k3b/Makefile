# $OpenBSD: Makefile,v 1.10 2011/04/19 08:25:23 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		CD/DVD creator
DISTNAME =		k3b-1.0.4
REVISION=		5

SHARED_LIBS =		k3b	0.0	# 3.0
SHARED_LIBS +=		k3bdevice	0.0	# 5.0

CATEGORIES =		multimedia
HOMEPAGE =		http://k3b.plainblack.com/
MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += DCOP FLAC FLAC++ ICE SM X11 Xau Xdmcp Xext Xfixes Xrender
WANTLIB += Xt art_lgpl_2 artsc avcodec avformat avutil bz2 c dvdread
WANTLIB += expat faac fontconfig freetype gsm idn jpeg kdecore
WANTLIB += kdefx kdesu kdeui kio kparts kwalletclient m mad mp3lame
WANTLIB += mpcdec ogg orc-0.4 png pthread pthread-stubs samplerate
WANTLIB += schroedinger-1.0 sndfile speex stdc++ tag theoradec
WANTLIB += theoraenc util vorbis vorbisenc vorbisfile vpx x264
WANTLIB += xcb z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=k3b/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt3 devel/gettext

RUN_DEPENDS =		sysutils/cdrtools \
			sysutils/dvd+rw-tools \
			audio/normalize \
			misc/cdrdao \
			audio/sox \
			multimedia/transcode \
			x11/hicolor-icon-theme \
			devel/desktop-file-utils

LIB_DEPENDS =		audio/flac \
			audio/lame \
			audio/libmad \
			audio/libmpcdec \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/taglib \
			devel/libdvdread \
			graphics/ffmpeg>=20100512 \
			graphics/jpeg \
			x11/kde/arts3 \
			x11/kde/libs3

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-qt-dir=${MODQT_QTDIR} \
			${MODQT_CONFIGURE_ARGS} \
			--without-musicbrainz \
			--without-resmgr \
			--without-hal \
			--without-alsa \
			--without-cdrecord-suid-root
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PTHREAD_LIBS="-pthread"

.include <bsd.port.mk>
