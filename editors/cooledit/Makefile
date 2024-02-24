COMMENT =	easy to use, graphical editor

DISTNAME =	cooledit-3.17.17
REVISION =	6

CATEGORIES =	editors

HOMEPAGE =	ftp://ftp.ibiblio.org/pub/Linux/apps/editors/X/cooledit/

SHARED_LIBS =	Cw	1.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

WANTLIB =	X11 c iconv intl util xcb

SITES =		http://fossies.org/linux/misc/

# not compatible with Python 3
CONFIGURE_ENV +=NOPYTHON=Yes

BUILD_DEPENDS += devel/gettext,-tools
LIB_DEPENDS +=	devel/gettext,-runtime

CONFIGURE_STYLE = gnu
CONFIGURE_ENV += XTERM_CMD=xterm LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS += --enable-static --disable-mail-author

# GPLv2+
PERMIT_PACKAGE =	Yes

.include <bsd.port.mk>
