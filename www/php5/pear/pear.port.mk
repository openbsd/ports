# $OpenBSD: pear.port.mk,v 1.2 2005/02/04 21:23:39 alek Exp $
# PHP PEAR module

RUN_DEPENDS+=    :php5-pear-5.0.*:www/php5/core,-pear
BUILD_DEPENDS+=  :php5-pear-5.0.*:www/php5/core,-pear

NO_BUILD=       Yes
.if !target(do-regress)
NO_REGRESS=	Yes
.endif

MAKE_FILE=	${PORTSDIR}/www/php5/pear/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www

PEAR_LIBDIR=	${PREFIX}/pear/lib
PEAR_PHPBIN=	${LOCALBASE}/bin/php
