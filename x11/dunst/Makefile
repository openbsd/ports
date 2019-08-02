# $OpenBSD: Makefile,v 1.9 2019/08/02 13:49:29 sthen Exp $

COMMENT =	customizable and lightweight notification-daemon

GH_ACCOUNT =	dunst-project
GH_PROJECT =	dunst
GH_TAGNAME =	v1.4.1

CATEGORIES =	x11

HOMEPAGE=	https://dunst-project.org/

MAINTAINER =	Timo Myyra <timo.myyra@bittivirhe.fi>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xinerama Xrandr Xss c cairo dbus-1 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pthread

USE_GMAKE =	Yes

LIB_DEPENDS +=	devel/gettext,-runtime \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/dbus

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANPREFIX="${PREFIX}/man" \
		DATADIR="${PREFIX}/share/examples"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/dunst.pod ${WRKSRC}/dunstrc

.include <bsd.port.mk>
