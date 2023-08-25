COMMENT=	grommunio PHP MAPI headers

V=		1.1
DISTNAME=	grommunio-mapi-header-php-${V}
REVISION=	0

GH_ACCOUNT=	grommunio
GH_PROJECT=     mapi-header-php
GH_COMMIT=	18b40f9701e08026713286c4c80dd2e765ae032c

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
