# $OpenBSD: Makefile,v 1.1 2020/04/15 15:50:16 bket Exp $

COMMENT =		input and output plugins for Audacious

DISTNAME =		audacious-plugins-${VERSION}

# BSD / GPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 audgui
WANTLIB += audtag avcodec avformat avutil cairo cddb cdio cdio_cdda
WANTLIB += cue curl faad fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m mms modplug mp3lame mpg123 neon
WANTLIB += notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 samplerate
WANTLIB += sndfile sndio soxr vorbis vorbisenc vorbisfile wavpack
WANTLIB += xml2 z

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		audio/audacious/player>=${VERSION} \
			devel/gettext,-tools
RUN_DEPENDS =		audio/audacious/player>=${VERSION}
# needed for the gio plugin
RUN_DEPENDS +=		x11/gnome/gvfs
LIB_DEPENDS =		audio/faad>=2.7 \
			audio/flac \
			audio/lame \
			audio/libcdio \
			audio/libcdio-paranoia \
			audio/libcue \
			audio/libmodplug \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libsoxr \
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			graphics/ffmpeg \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+2 \
			x11/dbus-glib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-jack \
			--disable-lirc \
			--disable-oss4 \
			--disable-pulse \
			--disable-qt \
			--disable-sdlout \
			--disable-sid \
			--disable-streamtuner \
			--enable-gtk
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
