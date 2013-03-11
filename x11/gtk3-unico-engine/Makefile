# $OpenBSD: Makefile,v 1.7 2013/03/11 11:46:13 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Unico GTK+3 engine

V=		1.0.2.1
DISTNAME=	unico-${V}
PKGNAME=	gtk3-unico-engine-${V}

CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/unico/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icule icuuc m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm z

MASTER_SITES=	http://distfiles.nl/

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+3

USE_LIBTOOL=	Yes

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

.include <bsd.port.mk>
