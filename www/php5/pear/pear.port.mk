# $OpenBSD: pear.port.mk,v 1.1.1.1 2004/10/02 11:32:38 robert Exp $
# PHP PEAR module

RUN_DEPENDS+=    :php5-pear-5.0.*:www/php5/core,-pear
BUILD_DEPENDS+=  :php5-pear-5.0.*:www/php5/core,-pear

NO_BUILD=       Yes
NO_REGRESS=     Yes

MAKE_FILE=	${PORTSDIR}/www/php5/pear/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www
