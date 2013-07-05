# $OpenBSD: Makefile,v 1.12 2013/07/05 09:34:36 jasper Exp $

COMMENT=	collaborative web-based system for project management

V=		1.70
DISTNAME=	webcollab-${V}
REVISION=	5
CATEGORIES=	www

HOMEPAGE=	http://webcollab.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=webcollab/}

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/webcollab
SUBST_VARS=	INSTDIR

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}-${V} ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/*

.include <bsd.port.mk>
