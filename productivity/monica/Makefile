COMMENT =	self hosted personal CRM system

CATEGORIES =	productivity

VERSION =	4.1.2
PKGNAME =	monica-${VERSION}

SITES =	https://github.com/monicahq/monica/releases/download/v${VERSION}/
DISTNAME =	monica-v${VERSION}

EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	https://www.monicahq.com/

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# AGPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-soap \
		lang/php/${MODPHP_VERSION},-zip \
		graphics/pecl-imagick${MODPHP_FLAVOR}

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${LOCALSTATEDIR}
INSTDIR =	${PREFIX}/www/monica

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -a ${WRKSRC}/. ${INSTDIR}
	rm ${INSTDIR}/vendor/sabre/dav/bin/googlecode_upload.py

.include <bsd.port.mk>
