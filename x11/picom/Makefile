# $OpenBSD: Makefile,v 1.1.1.1 2020/07/27 08:52:44 kirby Exp $

COMMENT =	lightweight compositor for X11

GH_ACCOUNT =	yshui
GH_PROJECT =	picom
GH_TAGNAME =	v8

CATEGORIES =	x11

# MPL 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 X11-xcb c config dbus-1 ev m pcre pixman-1
WANTLIB += xcb-composite xcb-damage xcb-glx xcb-image xcb-present
WANTLIB += xcb-randr xcb-render-util xcb-render xcb-shape xcb-sync
WANTLIB += xcb-xfixes xcb-xinerama xcb

MODULES =		devel/meson

BUILD_DEPENDS =		devel/uthash \
			textproc/asciidoc

RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		devel/libconfig \
			devel/libev \
			devel/pcre \
			x11/dbus

CONFIGURE_ARGS	+=	-Dwith_docs=true
CONFIGURE_ENV	+=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

pre-patch:
	cd ${WRKSRC}/media && mv compton.svg picom.svg
	cd ${WRKSRC}/media/icons/48x48 && mv compton.png picom.png

.include <bsd.port.mk>
