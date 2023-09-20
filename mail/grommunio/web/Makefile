COMMENT=	web user interface for grommunio

V=		3.2
DISTNAME=	grommunio-web-${V}
REVISION=	5

GH_ACCOUNT=	grommunio
GH_PROJECT=     grommunio-web
GH_COMMIT=      8350b619b1ddf3571774a56baa5dc770c0303191

CATEGORIES=	mail www

MODULES=	lang/php

.if ${MACHINE_ARCH} == i386
# java process run during the build uses a lot of ram; avoid scheduling
# other build jobs at the same time to increase the chance of this build
# succeeding
DPB_PROPERTIES=	lonesome
.endif

MODPHP_BUILDDEP=Yes
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
