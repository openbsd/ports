COMMENT = 	fast, lightweight and minimalistic Wayland terminal emulator
UNLINKED =	wayland

DISTNAME =	foot-${V}
V =		1.18.0

SITES =		https://codeberg.org/dnkl/foot/archive/
DISTFILES =     foot-{}${V}${EXTRACT_SUFX}

CATEGORIES =	wayland

HOMEPAGE =	https://codeberg.org/dnkl/foot

WRKDIST =	${WRKDIR}/foot

# MIT
PERMIT_PACKAGE = yes

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c

MODULES =       devel/meson

WANTLIB =	c epoll-shim fcft fontconfig m pixman-1
WANTLIB +=	pthread stdthreads utf8proc wayland-client wayland-cursor
WANTLIB +=	xkbcommon

BUILD_DEPENDS =	devel/tllist \
		textproc/scdoc \
		wayland/libinput-openbsd \
		wayland/wayland-protocols

LIB_DEPENDS =	devel/libstdthreads \
		devel/epoll-shim \
		graphics/fcft \
		wayland/wayland \
		x11/xkbcommon

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ENV = CPPFLAGS=-I${LOCALBASE}/include/libutf8proc

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/foot
	mv ${WRKINST}${SYSCONFDIR}/xdg/foot/foot.ini ${PREFIX}/share/examples/foot/

.include <bsd.port.mk>
