# $OpenBSD: pear.port.mk,v 1.6 2013/03/11 11:44:47 espie Exp $
# PHP PEAR module

PKGNAME?=	pear-${DISTNAME:S/_/-/}
RUN_DEPENDS+=	www/pear
BUILD_DEPENDS+=	${RUN_DEPENDS}

NO_BUILD=	Yes
.if !target(do-test)
NO_TEST=	Yes
.endif

MAKE_FILE=	${PORTSDIR}/www/pear/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www

PEAR_LIBDIR=	${PREFIX}/pear/lib
PEAR_PHPBIN=	${LOCALBASE}/bin/php

MASTER_SITES?=	http://pear.php.net/get/
EXTRACT_SUFX?=	.tgz

CATEGORIES+=	pear
