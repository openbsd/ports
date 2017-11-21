# $OpenBSD: Makefile,v 1.17 2017/11/21 00:13:05 naddy Exp $

COMMENT=	Unico GTK+3 engine

V=		1.0.2.1
DISTNAME=	unico-${V}
PKGNAME=	gtk3-unico-engine-${V}
REVISION=	5

CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/unico/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	https://distfiles.nl/

LIB_DEPENDS=	x11/gtk+3

CONFIGURE_STYLE=gnu

post-install:
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/theming-engines/*.{a,la}

.include <bsd.port.mk>
