# $OpenBSD: Makefile,v 1.6 2018/06/18 09:03:18 kn Exp $

COMMENT =	customizable and lightweight notification-daemon

GH_ACCOUNT =	dunst-project
GH_PROJECT =	dunst
GH_TAGNAME =	v1.3.2

CATEGORIES =	x11

HOMEPAGE=	https://dunst-project.org/

MAINTAINER =	Timo Myyra <timo.myyra@bittivirhe.fi>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += X11 Xinerama Xrandr Xss c cairo dbus-1 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pthread xdg-basedir

USE_GMAKE =	Yes

LIB_DEPENDS +=	devel/gettext \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/dbus \
		x11/libxdg-basedir

MAKE_FLAGS =	V=1 \
		PREFIX="${PREFIX}" \
		MANPREFIX="${PREFIX}/man"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/dunst.pod ${WRKSRC}/dunstrc

post-install:
	mv ${PREFIX}/share/dunst ${PREFIX}/share/examples/dunst

.include <bsd.port.mk>
