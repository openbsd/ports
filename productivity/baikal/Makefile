# $OpenBSD: Makefile,v 1.11 2015/06/05 06:00:22 robert Exp $

COMMENT=	lightweight CalDAV and CardDAV server

DISTNAME=	baikal-regular-0.2.7
PKGNAME=	${DISTNAME:S/-regular//}
EXTRACT_SUFX=	.tgz
CATEGORIES=	productivity www
REVISION=	1

HOMEPAGE=	http://baikal-server.com/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://baikal-server.com/get/

MODULES=	lang/php

WRKDIST=	${WRKDIR}/baikal-regular/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/baikal
SUBST_VARS=	INSTDIR

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar cf - . | (cd ${INSTDIR}; tar xf -)
	find ${INSTDIR} -name '*.orig' -exec rm {} \;
	mv ${INSTDIR}/Specific/db/db.sqlite{,.dist}

.include <bsd.port.mk>
