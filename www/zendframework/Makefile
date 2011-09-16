# $OpenBSD: Makefile,v 1.11 2011/09/16 12:00:10 espie Exp $

COMMENT=		framework for developing PHP web applications

V=			1.10.8
DISTNAME=		zendframework-${V}
DISTFILES=		ZendFramework-${V}.tar.gz

REVISION=		3

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
