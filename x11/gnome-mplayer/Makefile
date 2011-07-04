# $OpenBSD: Makefile,v 1.42 2011/07/04 13:32:55 dcoppa Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
DISTNAME =		gnome-mplayer-1.0.4
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
	Xrandr Xrender Xss atk-1.0 c cairo curl dbus-1 \
	dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
	gpod gthread-2.0 gtk-x11-2.0 m musicbrainz3 neon notify \
	pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MODULES =		devel/gettext \
			devel/dconf

LIB_DEPENDS =		devel/libnotify>=0.7.2 \
			audio/libgpod \
			audio/libmusicbrainz \
			net/curl \
			x11/dbus-glib \
			x11/gtk+2
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gnome/icon-theme \
			x11/mplayer>=20090828

USE_LIBTOOL =		Yes

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib -pthread"
CONFIGURE_ARGS =	--with-dbus \
			--with-gio \
			--with-gpm-new-method \
			--with-libgpod \
			--with-libmusicbrainz3 \
			--with-libnotify \
			--without-alsa \
			--without-gconf \
			--without-pulseaudio \
			--disable-nautilus

.include <bsd.port.mk>
