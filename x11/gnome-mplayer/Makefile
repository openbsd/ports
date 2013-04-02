# $OpenBSD: Makefile,v 1.73 2013/04/02 16:16:47 ajacoutot Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
V =			1.0.7
DISTNAME =		gnome-mplayer-${V}
REVISION =		6

CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer/

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL X11 Xext Xrender Xss atk-1.0 c cairo \
			cairo-gobject curl dbus-1 dbus-glib-1 \
			expat fontconfig freetype gdk-3 \
			gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmlib \
			gmtk gobject-2.0 gpod gthread-2.0 gtk-3 \
			m musicbrainz3 neon notify pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 \
			png pthread pthread-stubs xcb \
			xcb-render xcb-shm z

MODULES =		devel/gettext \
			devel/dconf

LIB_DEPENDS =		devel/libnotify>=0.7.2 \
			audio/libgpod \
			audio/libmusicbrainz \
			net/curl \
			x11/dbus-glib \
			x11/gmtk>=${V}
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic


USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib"
CONFIGURE_ARGS =	--with-dbus \
			--with-gio \
			--with-libgpod \
			--with-libmusicbrainz3 \
			--with-libnotify \
			--enable-gtk3 \
			--without-alsa \
			--without-pulseaudio \
			--disable-nautilus

pre-install:
	${SUBST_CMD} ${WRKBUILD}/apps.gnome-mplayer.preferences.gschema.xml

.include <bsd.port.mk>
