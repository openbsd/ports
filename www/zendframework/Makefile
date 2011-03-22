# $OpenBSD: Makefile,v 1.8 2011/03/22 16:04:17 ajacoutot Exp $

COMMENT=		framework for developing PHP web applications

V=			1.10.8
DISTNAME=		zendframework-${V}
DISTFILES=		ZendFramework-${V}.tar.gz

REVISION=		0

CATEGORIES=		www devel

HOMEPAGE=		http://framework.zend.com/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/ZendFramework-${V}/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

WRKDIST=		${WRKDIR}/ZendFramework-${V}

PREFIX=			/var/www
INSTDIR=		${PREFIX}/zendframework
SUBST_VARS=		INSTDIR

RUN_DEPENDS=		www/php5/core

do-install:
	@-test ! -d ${INSTDIR} && mkdir ${INSTDIR}
	@cd ${WRKDIST}/library; tar cf - . | (cd ${INSTDIR}; tar xf -)

.include <bsd.port.mk>
