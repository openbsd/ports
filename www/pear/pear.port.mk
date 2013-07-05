# $OpenBSD: pear.port.mk,v 1.7 2013/07/05 09:34:35 jasper Exp $
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

PREFIX=		${VARBASE}/www

PEAR_LIBDIR=	${PREFIX}/pear/lib
PEAR_PHPBIN=	${LOCALBASE}/bin/php

MASTER_SITES?=	http://pear.php.net/get/
EXTRACT_SUFX?=	.tgz

CATEGORIES+=	pear
