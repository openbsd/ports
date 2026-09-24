COMMENT=	web user interface for grommunio

V=		5.1
DISTNAME=	grommunio-web-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-web
GH_COMMIT=	185b48058e987bcdab4dd13961f2b3828da9555d

SITES=		https://nerd.hu/distfiles/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=Yes
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	lang/node \
		shells/bash \
		devel/gettext,-tools

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		mail/grommunio/gromox,-mapi \
		mail/grommunio/mapi-header-php>=2.2

USE_GMAKE=	Yes

NO_TEST=	Yes
PKG_ARCH=	*

MAKE_ENV+=	PHP=${MODPHP_BIN}

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/grommunio-web

do-install:
	find ${WRKSRC}/deploy -name config.php -exec mv {} {}.dist \;
	cp -Rp ${WRKSRC}/deploy ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
