# $OpenBSD: Makefile,v 1.14 2013/08/12 04:11:22 robert Exp $

COMMENT=	wiki-based system for collaborative creation of websites

DISTNAME=	pmwiki-2.2.35
REVISION=	1
EXTRACT_SUFX=	.tgz

CATEGORIES=	www
HOMEPAGE=	http://pmwiki.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/pub/pmwiki/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/pmwiki
SUBST_VARS=	INSTDIR

MODULES=	lang/php

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@mv ${PREFIX}/${DISTNAME} ${PREFIX}/pmwiki
	@perl -pi -e "s,/.flock,/wiki.d/.flock,g" ${PREFIX}/pmwiki/pmwiki.php
	@${INSTALL_DATA_DIR} ${PREFIX}/pmwiki/wiki.d ${PREFIX}/pmwiki/uploads

.include <bsd.port.mk>
