COMMENT=	web user interface for grommunio

V=		3.6
DISTNAME=	grommunio-web-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=	grommunio-web
GH_COMMIT=	779b245e3b9bfe792ba53c3ce9df0e1c7587362c

REVISION=	3

SITES=		https://nerd.hu/distfiles/

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=Yes
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	lang/node \
		devel/gettext,-tools

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		mail/grommunio/gromox,-mapi \
		mail/grommunio/mapi-header-php

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
