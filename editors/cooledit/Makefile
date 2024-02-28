COMMENT =	easy to use graphical editor

DISTNAME =	cooledit-3.17.28

CATEGORIES =	editors

HOMEPAGE =	https://github.com/paulsheer/cooledit/

SHARED_LIBS =	Cw	1.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	X11 c iconv intl util xcb

SITES =		https://www.ibiblio.org/pub/Linux/apps/editors/X/cooledit/

# not compatible with Python 3
CONFIGURE_ENV +=NOPYTHON=Yes

BUILD_DEPENDS += devel/gettext,-tools
LIB_DEPENDS +=	devel/gettext,-runtime

CONFIGURE_STYLE = gnu
CONFIGURE_ENV += XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS += --enable-static --disable-mail-author

.include <bsd.port.mk>
