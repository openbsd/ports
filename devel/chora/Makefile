# $OpenBSD: Makefile,v 1.7 2004/06/12 19:18:36 avsm Exp $ 

COMMENT=	"web-based CVS viewer module for Horde"

V=		1.2
HORDE_MODULE=	chora
HORDE_NAME=	Chora

DISTNAME=	${HORDE_MODULE}-${V}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel www
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_HORDE:=chora/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

PREFIX=		/var/www
INSTDIR=	${PREFIX}/horde
SUBST_VARS=	INSTDIR HORDE_NAME HORDE_MODULE
PATCH_LIST=	

RUN_DEPENDS=	:horde->=2.2.1:devel/horde

pre-fake:
	${INSTALL_DATA_DIR} ${INSTDIR}

do-install:
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/${HORDE_MODULE}-${V} ${INSTDIR}/${HORDE_MODULE}
	@cd ${INSTDIR}/${HORDE_MODULE} && ${PATCH} -s < ${PATCHDIR}/patch-diff.php \
	&& ${PATCH} -s < ${PATCHDIR}/patch-lib_CVSLib_Diff.php

.include <bsd.port.mk>
