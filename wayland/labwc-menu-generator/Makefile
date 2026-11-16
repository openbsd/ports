COMMENT =	generates labwc menus.xml for static and pipe menus

GH_ACCOUNT =	labwc
GH_PROJECT =	labwc-menu-generator
GH_TAGNAME =	0.2.2

CATEGORIES =	wayland sysutils

# GPLv2
PERMIT_PACKAGE = Yes

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson

WANTLIB =		glib-2.0 c

LIB_DEPENDS =		devel/glib2
BUILD_DEPENDS =		textproc/scdoc

.include <bsd.port.mk>
