COMMENT=	grommunio PHP MAPI headers

V=		1.3
DISTNAME=	grommunio-mapi-header-php-${V}

REVISION=	1

GH_ACCOUNT=	grommunio
GH_PROJECT=	mapi-header-php
GH_COMMIT=	dda0a9f41f7740bfb1386ebf572898fc3bc5a240

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
