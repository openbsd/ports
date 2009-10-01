# $OpenBSD: Makefile,v 1.16 2009/10/01 14:00:45 benoit Exp $

COMMENT =		graphical network monitor

DISTNAME =		etherape-0.9.8
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
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gconf-2 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcap pcre pixman-1 png popt pthread pthread-stubs ssl
WANTLIB += util xcb xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=etherape/}

MODULES =		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS =		::textproc/rarian
RUN_DEPENDS =		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =		gtk-x11-2.0.>=0.11,gailutil,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			glade-2.0.>=0.1::devel/libglade2 \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11 =		Yes
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
