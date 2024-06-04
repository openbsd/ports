COMMENT=	tool to handle the administration of PostgreSQL over the web

V=		7.14.7
GH_ACCOUNT=	ReimuHakurei
GH_PROJECT=	phpPgAdmin
GH_TAGNAME=	v$V-mod
PKGNAME=	phpPgAdmin-$V

CATEGORIES=	www databases

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>
# GPLv2+
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

MODULES=	lang/php

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpPgAdmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pgsql

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

post-install:
	@rm -fr ${PREFIX}/phpPgAdmin/tests

.include <bsd.port.mk>
