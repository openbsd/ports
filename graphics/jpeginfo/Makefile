COMMENT =	prints information and tests integrity of JPEG files

DISTNAME =	jpeginfo-1.6.1

CATEGORIES =	graphics

HOMEPAGE =	https://www.kokkonen.net/tjko/projects.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c jpeg

MASTER_SITES =		https://www.kokkonen.net/tjko/src/

LIB_DEPENDS =		graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libjpeg=${LOCALBASE}

DESTDIRNAME =		INSTALL_ROOT
MAKE_FLAGS =		mandir=${PREFIX}/man

NO_TEST =		Yes

.include <bsd.port.mk>
