COMMENT =	dynamic menu for sway and wlroots based Wayland compositors

V =		0.1.6
DISTNAME =	wmenu-${V}
SITES =		https://git.sr.ht/~adnano/wmenu/
DISTFILES =     wmenu-{archive/}${V}${EXTRACT_SUFX}

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

COMPILER =      base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/meson

BUILD_DEPENDS =	textproc/scdoc \
		wayland/wayland-protocols

LIB_DEPENDS =	devel/epoll-shim \
		devel/pango \
		wayland/wayland \
		x11/xkbcommon

WANTLIB +=	cairo gobject-2.0 pango-1.0 pangocairo-1.0 \
		epoll-shim wayland-client xkbcommon c

DEBUG_PACKAGES =${BUILD_PACKAGES}

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/wmenu_path ${PREFIX}/bin

.include <bsd.port.mk>
