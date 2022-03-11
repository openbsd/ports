COMMENT=	Arduino library for Adafruit graphics

V=		1.7.0
GH_ACCOUNT=	adafruit
GH_PROJECT=	Adafruit-GFX-Library
GH_TAGNAME=	${V}
PKGNAME=	arduino-adafruit-gfx-${V}

CATEGORIES=	devel

# BSD 2-clause
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/arduino

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=       *

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arduino/libraries
	cp -r ${WRKDIST} ${PREFIX}/share/arduino/libraries/Adafruit_GFX

.include <bsd.port.mk>
