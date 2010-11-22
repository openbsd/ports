# $OpenBSD: Makefile,v 1.28 2010/11/22 08:36:59 espie Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
DISTNAME =		gnome-mplayer-1.0.0
REVISION =		0
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
	Xfixes Xi Xinerama Xrandr Xrender Xss Xxf86vm atk-1.0 c cairo \
	dbus-1 dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0 \
	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
	gthread-2.0 gtk-x11-2.0 m neon pango-1.0 pangocairo-1.0 \
	pangoft2-1.0 pixman-1 png pthread pthread-stubs musicbrainz3 \
	xcb xcb-render xcb-shm z notify gpod curl

MODULES =		devel/gettext

LIB_DEPENDS =		devel/libnotify \
			audio/libgpod \
			audio/libmusicbrainz \
			net/curl
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gnome/icon-theme \
			x11/mplayer>=20090828

USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib -pthread"
CONFIGURE_ARGS =	--with-gio \
			--with-libnotify \
			--with-libgpod \
			--with-libmusicbrainz3 \
			--enable-panscan \
			--without-alsa \
			--without-flat-volume \
			--without-gconf \
			--disable-nautilus

.include <bsd.port.mk>
