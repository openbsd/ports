# $OpenBSD: Makefile,v 1.15 2010/03/29 12:16:07 dcoppa Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
DISTNAME =		gnome-mplayer-0.9.9.2
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
	Xfixes Xi Xinerama Xrandr Xrender Xss atk-1.0 c cairo \
	dbus-1 dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
	gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
	gthread-2.0 gtk-x11-2.0 m neon pango-1.0 pangocairo-1.0 \
	pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb z

MODULES =		devel/gettext \
			devel/gconf2

LIB_DEPENDS =		notify::devel/libnotify \
			gpod.>=600.0::audio/libgpod \
			musicbrainz3::audio/libmusicbrainz \
			curl.>=12::net/curl
RUN_DEPENDS =		::devel/desktop-file-utils \
			:gnome-icon-theme-*:x11/gnome/icon-theme \
			:mplayer->=20090708:x11/mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
MODGCONF2_SCHEMAS_DIR =	gnome-mplayer

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib -pthread"
CONFIGURE_ARGS =	--with-gio \
			--with-gconf \
			--with-libnotify \
			--with-libgpod \
			--with-libmusicbrainz3 \
			--without-alsa \
			--without-flat-volume \
			--without-gpm-new-method \
			--without-gpm-old-method \
			--disable-nautilus

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${SCHEMAS_INSTDIR}
	${INSTALL_DATA} ${WRKSRC}/gnome-mplayer.schemas \
		${PREFIX}/${SCHEMAS_INSTDIR}

.include <bsd.port.mk>
