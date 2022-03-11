COMMENT=	Arduino library for Adafruit RA8875

V=		1.3.5
GH_ACCOUNT=	adafruit
GH_PROJECT=	Adafruit_RA8875
GH_TAGNAME=	${V}
PKGNAME=	arduino-adafruit-ra8875-${V}

CATEGORIES=	devel

# BSD 2-clause
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/arduino \
		devel/arduino-adafruit-gfx

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=       *

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arduino/libraries
	cp -r ${WRKDIST} ${PREFIX}/share/arduino/libraries/Adafruit_RA8875

.include <bsd.port.mk>
