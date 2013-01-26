# $OpenBSD: Makefile,v 1.24 2013/01/26 14:43:51 jasper Exp $

COMMENT=		text widget that extends the GTK3 GtkTextView widget

GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		3.6.3
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=	gtksourceview-3.0    0.0      # .0.0
CATEGORIES=		x11

MAJOR_VERSION=		3.0
SUBST_VARS=		MAJOR_VERSION

HOMEPAGE=		http://projects.gnome.org/gtksourceview/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		textproc/libxml \
			x11/gtk+3

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu

REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
