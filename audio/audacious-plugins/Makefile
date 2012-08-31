# $OpenBSD: Makefile,v 1.52 2012/08/31 20:16:40 ratchov Exp $

SHARED_ONLY =		Yes

COMMENT =		input and output plugins for audacious

V =			3.3.1

DISTNAME =		audacious-plugins-$V
REVISION =		0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += FLAC GL SDL X11 Xcomposite Xrender atk-1.0 audcore audgui
WANTLIB += audtag cairo cairo-gobject cddb cdio cdio_cdda cue curl
WANTLIB += dbus-1 dbus-glib-1 expat faad fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 m mms modplug mp3lame mpg123 neon notify ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs samplerate sndfile sndio stdc++
WANTLIB += vorbis vorbisenc vorbisfile wavpack xcb xcb-render
WANTLIB += xcb-shm xml2 z

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
			audio/libvorbis \
			audio/mpg123 \
			audio/wavpack \
			devel/libnotify>=0.7.2 \
			devel/sdl \
			multimedia/libmms \
			net/curl \
			net/neon \
			textproc/libxml \
			x11/gtk+3 \
			x11/dbus-glib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--enable-ipv6 \
			--disable-adplug \
			--disable-alsa \
			--disable-amidiplug \
			--disable-bs2b \
			--disable-ffaudio \
			--disable-jack \
			--disable-lirc \
			--disable-oss4 \
			--disable-pulse \
			--disable-sid
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS =		Yes

.include <bsd.port.mk>
