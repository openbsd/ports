# $OpenBSD: Makefile,v 1.36 2015/04/21 18:51:25 sthen Exp $

COMMENT =		graphical network monitor

DISTNAME =		etherape-0.9.13
CATEGORIES =		net
REVISION =		3

HOMEPAGE =		http://etherape.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += canberra crypto dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl lzma m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcap pcre pixman-1 png
WANTLIB += popt pthread pthread-stubs ssl util vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=etherape/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS =		x11/gnome/doc-utils
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		x11/gtk+2 \
			devel/libglade2 \
			x11/gnome/libgnomeui

.include <bsd.port.mk>
