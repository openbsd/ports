# $OpenBSD: Makefile,v 1.66 2015/04/04 09:20:59 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		input and output plugins for Audacious

V =			3.5.2
REVISION =		1

DISTNAME =		audacious-plugins-$V
CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL X11 Xcomposite Xrender atk-1.0 audgui audtag
WANTLIB += avcodec avformat avutil c cairo cairo-gobject cddb
WANTLIB += cdio cdio_cdda cue curl dbus-1 dbus-glib-1 faad fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 m mms modplug mp3lame mpg123 neon
WANTLIB += notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += samplerate sndfile sndio soxr stdc++ vorbis vorbisenc
WANTLIB += vorbisfile wavpack xml2 z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		audio/audacious>=${V}
# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs

LIB_DEPENDS =		audio/faad>=2.7 \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcue \
			audio/libmodplug \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libsoxr \
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			graphics/ffmpeg>=20121026 \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+3 \
			x11/dbus-glib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-adplug \
			--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-jack \
			--disable-lirc \
			--disable-oss4 \
			--disable-pulse \
			--disable-sdlout \
			--disable-sid
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
