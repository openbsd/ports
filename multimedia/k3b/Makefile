# $OpenBSD: Makefile,v 1.8 2010/10/24 21:40:38 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		CD/DVD creator
DISTNAME =		k3b-1.0.4
REVISION=		4

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

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn
WANTLIB += m ogg png pthread pthread-stubs stdc++ util xcb z jpeg
WANTLIB += samplerate dvdread mad mpcdec vorbis vorbisenc vorbisfile
WANTLIB += mp3lame avcodec avformat sndfile FLAC FLAC++ tag artsc
WANTLIB += DCOP kdecore kdefx kdesu kdeui kio kparts kwalletclient

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=k3b/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt3 devel/gettext

RUN_DEPENDS =		::sysutils/cdrtools \
			::sysutils/dvd+rw-tools \
			::audio/normalize \
			::misc/cdrdao \
			::audio/sox \
			::multimedia/transcode \
			::x11/hicolor-icon-theme \
			:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS =		::audio/flac \
			::audio/lame \
			::audio/libmad \
			::audio/libmpcdec \
			::audio/libsamplerate \
			::audio/libsndfile \
			::audio/libvorbis \
			::audio/taglib \
			::devel/libdvdread \
			:ffmpeg->=20100512:graphics/ffmpeg \
			::graphics/jpeg \
			::x11/kde/arts3 \
			::x11/kde/libs3

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
