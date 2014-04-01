# $OpenBSD: Makefile,v 1.56 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		collection of theme engines for GTK+2

GNOME_PROJECT=		gtk-engines
GNOME_VERSION=		2.20.2
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

# warning: PKGNAME does not default to ${DISTNAME}
PKGNAME=		gtk-engines2-${GNOME_VERSION}
REVISION=		5

CATEGORIES=		x11

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS=	x11/gtk+2

MODULES=		devel/gettext \
			x11/gnome

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--disable-lua

# nm: unknown option -- D
NO_TEST=	       Yes

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.a

.include <bsd.port.mk>
