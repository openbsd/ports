# $OpenBSD: Makefile,v 1.21 2014/11/22 12:22:23 sthen Exp $

COMMENT=		framework for developing PHP web applications

DISTNAME=		ZendFramework-1.12.9
PKGNAME=		${DISTNAME:L}

CATEGORIES=		www devel

HOMEPAGE=		http://framework.zend.com/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://packages.zendframework.com/releases/${DISTNAME}/

MODULES=		lang/php
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/zendframework
SUBST_VARS=		INSTDIR

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/library; tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
