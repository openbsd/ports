COMMENT =		random number generator (rng) testing suite

DISTNAME =		dieharder-3.31.1
REVISION =		2
SHARED_LIBS +=  dieharder                 0.0 # 0.0
CATEGORIES =		math

HOMEPAGE =		http://webhome.phy.duke.edu/~rgb/General/dieharder.php

# GPLv2+ (w/ "Beverage modification")
# https://webhome.phy.duke.edu/~rgb/GPL.php
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://webhome.phy.duke.edu/~rgb/General/dieharder/
EXTRACT_SUFX =		.tgz

WANTLIB += c gsl gslcblas m

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# More than 50 common symbols defined in more than half a dozen headers.
CFLAGS +=		-fcommon

BUILD_DEPENDS =		textproc/latex2html
LIB_DEPENDS =		devel/gsl

USE_GMAKE =		Yes

post-build:
	cd ${WRKSRC}/manual && ${MAKE_PROGRAM} ${MAKE_ENV}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dieharder/
	${INSTALL_DATA} ${WRKSRC}/manual/dieharder.pdf \
		${PREFIX}/share/doc/dieharder/

.include <bsd.port.mk>
