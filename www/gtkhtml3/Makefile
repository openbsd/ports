# $OpenBSD: Makefile,v 1.54 2013/02/18 07:53:54 jasper Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

SHARED_ONLY=		Yes

COMMENT=		lightweight HTML rendering/printing/editing engine

GNOME_PROJECT=		gtkhtml
GNOME_VERSION=		3.32.2
API_VERSION=		3.14

PKGNAME=		gtkhtml3-${VERSION}

REVISION=		3

HOMEPAGE=		http://www.gnome.org/

SHARED_LIBS +=  gtkhtml-3.14         4.0      # 20.1
SHARED_LIBS +=  gtkhtml-editor-3.14  0.0      # unknown

CATEGORIES=    		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 drm enchant expat ffi fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/gconf2 \
			textproc/enchant \
			x11/gtk+2

BUILD_DEPENDS=		${RUN_DEPENDS}
# libsoup is only used by testgtkhtml, but since libsoup may be around during
# configure, and can have disappeared afterwards, the build can fail. so
# register it as a dependency instead of axing the Makefiles..
BUILD_DEPENDS+=		devel/libsoup
RUN_DEPENDS=		devel/iso-codes \
			x11/gnome/icon-theme

CONFIGURE_STYLE=	gnu

SUBST_VARS=		API_VERSION

# Resolve conflict with gtkhtml4.
post-install:
	mv ${PREFIX}/bin/gtkhtml-editor-test ${PREFIX}/bin/gtkhtml3-editor-test

.include <bsd.port.mk>
