COMMENT=	grommunio PHP MAPI headers

V=		2.1
DISTNAME=	grommunio-mapi-header-php-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	mapi-header-php
GH_COMMIT=	1b094f2359b777beed8d401a7b5eef7bc9f96d3e

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/grommunio-mapi-header-php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/* ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
