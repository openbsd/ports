# $OpenBSD: Makefile,v 1.5 2009/06/07 06:46:37 ajacoutot Exp $

COMMENT =		GTK+/GNOME frontend for MPlayer
DISTNAME =		gnome-mplayer-0.9.5
PKGNAME =		${DISTNAME}p2
CATEGORIES =		x11 multimedia

MAINTAINER =		David Coppa <dcoppa@gmail.com>

HOMEPAGE =		http://kdekorte.googlepages.com/gnomemplayer

MASTER_SITES =		http://gnome-mplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo
WANTLIB += crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0 idn krb5
WANTLIB += m neon pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread ssl xml2 z

MODULES =		devel/gettext \
			devel/gconf2

LIB_DEPENDS =		notify::devel/libnotify \
			gpod.>=600.0::audio/libgpod \
			musicbrainz3::audio/libmusicbrainz \
			curl.>=12::net/curl
RUN_DEPENDS =		::devel/desktop-file-utils \
			::x11/mplayer

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
			--disable-nautilus

# don't install schemas configuration, @exec takes care of it
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2

.include <bsd.port.mk>
