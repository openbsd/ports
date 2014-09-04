# $OpenBSD: Makefile,v 1.61 2014/09/04 09:36:47 jasper Exp $

PORTSCOUT+=		limit:^3

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

SHARED_ONLY=		Yes

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		3.32.2
API_VERSION=		3.14
EXTRACT_SUFX=		.tar.bz2

PKGNAME=		gtkhtml3-${VERSION}

REVISION=		8

SHARED_LIBS +=  gtkhtml-3.14         4.0      # 20.1
SHARED_LIBS +=  gtkhtml-editor-3.14  0.0      # unknown

CATEGORIES=    		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/gconf2 \
			textproc/enchant \
			x11/gtk+2

BUILD_DEPENDS=		devel/iso-codes

# libsoup is only used by testgtkhtml, but since libsoup may be around during
# configure, and can have disappeared afterwards, the build can fail. so
# register it as a dependency instead of axing the Makefiles..
BUILD_DEPENDS+=		devel/libsoup

RUN_DEPENDS=		devel/iso-codes

CONFIGURE_STYLE=	gnu

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

SUBST_VARS=		API_VERSION

# Resolve conflict with gtkhtml4.
post-install:
	mv ${PREFIX}/bin/gtkhtml-editor-test ${PREFIX}/bin/gtkhtml3-editor-test

.include <bsd.port.mk>
