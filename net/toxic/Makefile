# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:50 sthen Exp $

COMMENT =		ncurses-based Tox client

GH_ACCOUNT =		Jfreegman
GH_PROJECT =		toxic
GH_TAGNAME =		v0.8.2
REVISION =		3

CATEGORIES =		net

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += alut c config curses curl intl m openal png pthread
WANTLIB += qrencode toxcore util z ${MODPY_WANTLIB}

LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			net/curl \
			graphics/libqrencode

MAKE_ENV +=		ENABLE_PYTHON=1 \
			USER_CFLAGS="${CFLAGS}"
MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
CONFIGURE_STYLE =	none

USE_GMAKE =		yes

FLAVORS =		no_x11
FLAVOR ?=

.if ${FLAVOR:Mno_x11}
MAKE_ENV +=		DISABLE_DESKTOP_NOTIFY=1 \
			DISABLE_X11=1
.else
WANTLIB +=		X11 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB +=		notify vpx
LIB_DEPENDS +=		devel/libnotify

RUN_DEPENDS =		devel/desktop-file-utils
.endif

NO_TEST =		Yes

.if ${FLAVOR:Mno_x11}
post-install:
	rm -Rf ${PREFIX}/share/applications/
.endif

.include <bsd.port.mk>
