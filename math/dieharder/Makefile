# $OpenBSD: Makefile,v 1.2 2017/11/05 11:30:43 tb Exp $

COMMENT =		random number generator (rng) testing suite

DISTNAME =		dieharder-3.31.1
REVISION =		0
SHARED_LIBS +=  dieharder                 0.0 # 0.0
CATEGORIES =		math

HOMEPAGE =		http://webhome.phy.duke.edu/~rgb/General/dieharder.php

# GPLv2+ (w/ "Beverage modification")
# https://webhome.phy.duke.edu/~rgb/GPL.php
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://webhome.phy.duke.edu/~rgb/General/dieharder/
EXTRACT_SUFX =		.tgz

WANTLIB += c gsl gslcblas m

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =		devel/gsl

.include <bsd.port.mk>
