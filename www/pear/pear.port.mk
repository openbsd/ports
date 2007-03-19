# $OpenBSD: pear.port.mk,v 1.1.1.1 2007/03/19 23:13:23 robert Exp $
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
