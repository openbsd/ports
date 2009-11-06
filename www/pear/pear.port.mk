# $OpenBSD: pear.port.mk,v 1.3 2009/11/06 09:05:24 jasper Exp $
# PHP PEAR module

RUN_DEPENDS+=	:pear-*:www/pear
BUILD_DEPENDS+=	${RUN_DEPENDS}

NO_BUILD=	Yes
.if !target(do-regress)
NO_REGRESS=	Yes
.endif

MAKE_FILE=	${PORTSDIR}/www/pear/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www

PEAR_LIBDIR=	${PREFIX}/pear/lib
PEAR_PHPBIN=	${LOCALBASE}/bin/php

MASTER_SITES?=	http://pear.php.net/get/
EXTRACT_SUFX?=	.tgz

CATEGORIES+=	pear
