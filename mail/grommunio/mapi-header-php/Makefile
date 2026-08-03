COMMENT=	grommunio PHP MAPI headers

V=		2.2
DISTNAME=	grommunio-mapi-header-php-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	mapi-header-php
GH_COMMIT=	4af93f0248f84fcb435535be8daedea7da939859

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
