# $OpenBSD: Makefile,v 1.3 2017/08/31 20:57:00 sthen Exp $

COMMENT=	customizable and lightweight notification-daemon

GH_ACCOUNT =	dunst-project
GH_PROJECT =	dunst
GH_TAGNAME =	v1.2.0

CATEGORIES =	x11

HOMEPAGE=	https://dunst-project.org/

MAINTAINER =	Timo Myyra <timo.myyra@wickedbsd.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xss c cairo dbus-1 fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pthread xdg-basedir
WANTLIB += z

USE_GMAKE =	Yes

LIB_DEPENDS +=  devel/gettext \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/gtk+2 \
		x11/libxdg-basedir \
		x11/dbus

MAKE_FLAGS =	V=1 PREFIX="${PREFIX}" MANPREFIX="${PREFIX}/man"

post-install:
	mv ${PREFIX}/share/dunst ${PREFIX}/share/examples/dunst

.include <bsd.port.mk>
