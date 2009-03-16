# $OpenBSD: Makefile,v 1.1.1.1 2009/03/16 09:53:18 ajacoutot Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
DISTNAME =		gnome-mplayer-0.9.4
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@gmail.com>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
			dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 m neon pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			pixman-1 png pthread z

MODULES =		devel/gettext

LIB_DEPENDS =		gconf-2::devel/gconf2 \
			notify::devel/libnotify \
			gpod.>=600.0::audio/libgpod \
			musicbrainz3::audio/libmusicbrainz \
			curl.>=12::net/curl
RUN_DEPENDS =		::devel/desktop-file-utils \
			::x11/mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib -pthread"
CONFIGURE_ARGS =	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-mplayer \
			--with-gio \
			--with-gconf \
			--with-libnotify \
			--with-libgpod \
			--with-libmusicbrainz3

# don't install schemas configuration, @exec takes care of it
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2

.include <bsd.port.mk>
