COMMENT =	self hosted RSS/Atom aggregator

CATEGORIES =	www
PKG_ARCH =	*

GH_ACCOUNT =	FreshRSS
GH_PROJECT =	FreshRSS
GH_TAGNAME =	1.20.2

PKGNAME =	freshrss-${GH_TAGNAME}
REVISION =	0

HOMEPAGE =	https://freshrss.org/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# AGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-pdo_sqlite \
		lang/php/${MODPHP_VERSION},-zip

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${LOCALSTATEDIR}
INSTDIR =	${PREFIX}/www/freshrss

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -a ${WRKSRC}/. ${INSTDIR}

.include <bsd.port.mk>
