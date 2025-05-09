COMMENT =		ncurses-based Tox client
REVISION =		1

DIST_TUPLE =		github Jfreegman toxic v0.15.1 .

CATEGORIES =		net

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += alut c config curses curl m openal png pthread intl
WANTLIB += qrencode toxcore util z ${MODPY_WANTLIB}

LIB_DEPENDS =		audio/freealut \
			net/toxcore \
			devel/libconfig \
			net/curl \
			graphics/libqrencode

MAKE_ENV +=		ENABLE_PYTHON=1 \
			ENABLE_RELEASE=1 \
			USER_CFLAGS="${CFLAGS}"
MODULES =		lang/python
CONFIGURE_STYLE =	none
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}" \
			MANDIR="${PREFIX}/man"

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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cfg/checks/python.mk

.if ${FLAVOR:Mno_x11}
post-install:
	rm -Rf ${PREFIX}/share/applications/
.endif

.include <bsd.port.mk>
