COMMENT=	web user interface for grommunio

V=		3.1
DISTNAME=	grommunio-web-${V}

GH_ACCOUNT=	grommunio
GH_PROJECT=     grommunio-web
GH_COMMIT=      33f629b1b529be92dc4bd9e1da2b519f8e822c55

CATEGORIES=	mail www

MODULES=	lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=	No

BUILD_DEPENDS=	devel/jdk/11 \
		lang/node \
		devel/gettext,-tools

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		mail/grommunio/gromox,-mapi \
		mail/grommunio/mapi-header-php

USE_GMAKE=	Yes

NO_TEST=	Yes
PKG_ARCH=	*

MAKE_ENV+=	JAVA=${LOCALBASE}/jdk-11/bin/java \
		PHP=${MODPHP_BIN}

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/grommunio-web

do-install:
	find ${WRKSRC}/deploy -name config.php -exec mv {} {}.dist \;
	cp -Rp ${WRKSRC}/deploy ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
