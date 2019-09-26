# $OpenBSD: Makefile,v 1.32 2019/09/26 21:59:31 sthen Exp $

COMMENT=	tool to handle the administration of PostgreSQL over the web

DISTNAME=	phpPgAdmin-5.6.0
CATEGORIES=	www databases
HOMEPAGE=	http://phppgadmin.sourceforge.net/
REVISION=	0

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/phppgadmin/phppgadmin/releases/download/REL_5-6-0/
EXTRACT_SUFX=	.tar.bz2

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
	@rm ${PREFIX}/phpPgAdmin/conf/{.gitignore,config.inc.php}

.include <bsd.port.mk>
