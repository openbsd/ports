# $OpenBSD: Makefile,v 1.19 2013/08/12 04:11:22 robert Exp $

COMMENT=		framework for developing PHP web applications

V=			1.12.1
REVISION=		0
DISTNAME=		zendframework-${V}
DISTFILES=		ZendFramework-${V}.tar.gz

CATEGORIES=		www devel

HOMEPAGE=		http://framework.zend.com/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://packages.zendframework.com/releases/ZendFramework-${V}/

MODULES=		lang/php
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/ZendFramework-${V}

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/zendframework
SUBST_VARS=		INSTDIR

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/library; tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
