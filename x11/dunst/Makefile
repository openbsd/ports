# $OpenBSD: Makefile,v 1.11 2020/09/27 18:37:40 ajacoutot Exp $

COMMENT =	customizable and lightweight notification-daemon

GH_ACCOUNT =	dunst-project
GH_PROJECT =	dunst
GH_TAGNAME =	v1.5.0

CATEGORIES =	x11

HOMEPAGE=	https://dunst-project.org/

MAINTAINER =	Timo Myyra <timo.myyra@bittivirhe.fi>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xinerama Xrandr Xss c cairo gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 harfbuzz intl m notify
WANTLIB += pango-1.0 pangocairo-1.0 pthread

USE_GMAKE =	Yes

BUILD_DEPENDS =	x11/dbus

LIB_DEPENDS +=	devel/gettext,-runtime \
		devel/glib2 \
		devel/libnotify \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2

RUN_DEPENDS +=	x11/dbus

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANPREFIX="${PREFIX}/man" \
		DATADIR="${PREFIX}/share/examples"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/dunst.pod ${WRKSRC}/dunstrc

.include <bsd.port.mk>
