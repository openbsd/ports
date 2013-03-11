# $OpenBSD: Makefile,v 1.21 2013/03/11 11:44:48 espie Exp $

COMMENT=	tool to handle the administration of PostgreSQL over the web

DISTNAME=	phpPgAdmin-5.0.4
REVISION=	0
CATEGORIES=	www databases
HOMEPAGE=	http://phppgadmin.sourceforge.net/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phppgadmin/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

MODULES=	lang/php

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpPgAdmin
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-pgsql

do-install:
	@cp -Rp ${WRKDIST} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
