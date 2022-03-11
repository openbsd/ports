COMMENT =	customizable and lightweight notification-daemon

GH_ACCOUNT =	dunst-project
GH_PROJECT =	dunst
GH_TAGNAME =	v1.7.3

CATEGORIES =	x11

HOMEPAGE=	https://dunst-project.org/

MAINTAINER =	Timo Myyra <timo.myyra@bittivirhe.fi>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xinerama Xrandr Xss c cairo gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 harfbuzz intl m notify
WANTLIB += pango-1.0 pangocairo-1.0 pthread

# C11 with GNU extensions
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c
CFLAGS +=	-std=gnu11

USE_GMAKE =	Yes

BUILD_DEPENDS =	graphics/png \
		x11/dbus

LIB_DEPENDS +=	devel/gettext,-runtime \
		devel/glib2 \
		devel/libnotify \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2

RUN_DEPENDS +=	x11/dbus

TEST_DEPENDS =	shells/bash

MAKE_FLAGS =	WAYLAND=0

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		MANPREFIX="${PREFIX}/man" \
		DATADIR="${PREFIX}/share/examples" \
		SYSCONFDIR="/etc"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/dunst.1.pod \
		${WRKSRC}/docs/dunst.5.pod ${WRKSRC}/dunstrc

post-install:
	mv ${WRKINST}/${SYSCONFDIR}/dunst ${PREFIX}/share

.include <bsd.port.mk>
