COMMENT =		improved screen locker

GH_ACCOUNT =		i3
GH_PROJECT =		i3lock
GH_TAGNAME =		2.14.1

CATEGORIES =		x11

HOMEPAGE =		https://i3wm.org/i3lock/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# c11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

SITES =			https://i3wm.org/i3lock/
EXTRACT_SUFX =		.tar.xz

WANTLIB += c cairo ev m xcb xcb-image xcb-randr xcb-xrm
WANTLIB += xcb-util xcb-xinerama xcb-xkb xkbcommon xkbcommon-x11

MODULES =		devel/meson

LIB_DEPENDS =		devel/libev \
			graphics/cairo \
			x11/xkbcommon

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
