COMMENT =	utility to optimize jpeg files

GH_ACCOUNT =	tjko
GH_PROJECT =	jpegoptim
GH_TAGNAME =	v1.5.2

CATEGORIES =	graphics

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c jpeg m

LIB_DEPENDS =		graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libjpeg=${LOCALBASE}

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
