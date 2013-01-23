# $OpenBSD: Makefile,v 1.28 2013/01/23 10:17:46 benoit Exp $

COMMENT =		graphical network monitor

DISTNAME =		etherape-0.9.12
CATEGORIES =		net

HOMEPAGE =		http://etherape.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 GL Xxf86vm canberra drm
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gconf-2 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcap pcre pixman-1 png popt pthread pthread-stubs ssl
WANTLIB += util xcb xml2 z gnomeui-2 glade-2.0 gtk-x11-2.0
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 xcb-shm
WANTLIB += gcrypt gpg-error xcb-render ltdl ogg vorbis vorbisfile
WANTLIB += ffi harfbuzz icudata icule icuuc stdc++

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

USE_LIBTOOL =		Yes
USE_GROFF =		Yes

.include <bsd.port.mk>
