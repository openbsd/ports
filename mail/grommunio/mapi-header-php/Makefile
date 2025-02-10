COMMENT=	grommunio PHP MAPI headers

V=		1.5
DISTNAME=	grommunio-mapi-header-php-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	mapi-header-php
GH_COMMIT=	29373fd2e291de8f56c8bccc06e69a840db9ea44

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
