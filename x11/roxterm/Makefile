# $OpenBSD: Makefile,v 1.36 2014/04/20 17:25:04 jasper Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-2.0.1
REVISION=		9
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs util vte2_90
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/vte3 \
			x11/dbus-glib

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/xmlto

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
