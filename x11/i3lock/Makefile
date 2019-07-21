# $OpenBSD: Makefile,v 1.6 2019/07/21 10:26:40 jasper Exp $

COMMENT =		improved screen locker

GH_ACCOUNT =		i3
GH_PROJECT =		i3lock
GH_TAGNAME =		2.12

CATEGORIES =		x11

HOMEPAGE =		https://i3wm.org/i3lock/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://i3wm.org/i3lock/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += c cairo ev m xcb xcb-image xcb-shm xcb-randr iconv xcb-xrm
WANTLIB += xcb-util xcb-xinerama xcb-xkb xkbcommon xkbcommon-x11

LIB_DEPENDS =		devel/libev \
			graphics/cairo \
			x11/xkbcommon

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

USE_GMAKE =		Yes

.include <bsd.port.mk>
