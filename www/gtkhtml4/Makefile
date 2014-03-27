# $OpenBSD: Makefile,v 1.33 2014/03/27 08:44:53 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		4.8.0

API_VERSION=		4.0
SUBST_VARS=		API_VERSION

PKGNAME=		gtkhtml4-${VERSION}

SHARED_LIBS +=  gtkhtml-4.0               0.0 # 0.0
SHARED_LIBS +=  gtkhtml-editor-4.0        0.0 # 0.0

CATEGORIES=    		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += cairo-gobject enchant expat fontconfig freetype
WANTLIB += gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z ffi
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz
WANTLIB += graphite2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		textproc/enchant \
			x11/gtk+3

BUILD_DEPENDS=		${RUN_DEPENDS}
# libsoup is only used by testgtkhtml, but since libsoup may be around during
# configure, and can have disappeared afterwards, the build can fail. so
# register it as a dependency instead of axing the Makefiles..
BUILD_DEPENDS+=		devel/libsoup
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

CONFIGURE_STYLE=	gnu
# pickup X11/XF86keysym.h for multimedia support
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

.include <bsd.port.mk>
