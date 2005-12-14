# $OpenBSD: pear.port.mk,v 1.2 2005/12/14 06:57:18 brad Exp $
# PHP PEAR module

RUN_DEPENDS+=    :php4-pear-4.4.*:www/php4/core,-pear
BUILD_DEPENDS+=  :php4-pear-4.4.*:www/php4/core,-pear

NO_BUILD=       Yes
NO_REGRESS=     Yes

MAKE_FILE=	${PORTSDIR}/www/php4/pear/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www
