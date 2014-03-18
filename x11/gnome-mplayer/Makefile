# $OpenBSD: Makefile,v 1.84 2014/03/18 06:50:18 dcoppa Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer

V =			1.0.9b
DISTNAME =		gnome-mplayer-${V}
REVISION =		1
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer/

MASTER_SITES =		https://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xss atk-1.0 c cairo cairo-gobject \
			dbus-1 dbus-glib-1 fontconfig freetype \
			gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
			gmlib>=2 gmtk>=2 gobject-2.0 gpod \
			gthread-2.0 gtk-3 m notify pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pthread z

MODULES =		devel/gettext \
			devel/dconf

LIB_DEPENDS =		devel/libnotify>=0.7.2 \
			audio/libgpod \
			x11/dbus-glib \
			x11/gmtk>=${V}
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic


USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib"
CONFIGURE_ARGS =	--with-dbus \
			--with-gio \
			--with-libgpod \
			--with-libnotify \
			--enable-gtk3 \
			--without-alsa \
			--without-libgda \
			--without-libmusicbrainz3 \
			--without-pulseaudio \
			--disable-nautilus \
			--disable-nemo

pre-install:
	${SUBST_CMD} ${WRKBUILD}/apps.gnome-mplayer.preferences.gschema.xml

.include <bsd.port.mk>
