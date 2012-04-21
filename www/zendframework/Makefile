# $OpenBSD: Makefile,v 1.13 2012/04/21 12:52:40 sthen Exp $

COMMENT=		framework for developing PHP web applications

V=			1.10.8
DISTNAME=		zendframework-${V}
DISTFILES=		ZendFramework-${V}.tar.gz

REVISION=		5

CATEGORIES=		www devel

HOMEPAGE=		http://framework.zend.com/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/ZendFramework-${V}/

MODULES=		lang/php
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/ZendFramework-${V}

PREFIX=			/var/www
INSTDIR=		${PREFIX}/zendframework
SUBST_VARS=		INSTDIR

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/library; tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
