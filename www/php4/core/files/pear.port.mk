# $OpenBSD: pear.port.mk,v 1.2 2003/05/23 21:17:29 avsm Exp $
# PHP PEAR module

RUN_DEPENDS+=    :php4-pear-4.3.*:www/php4/core,-pear
BUILD_DEPENDS+=  :php4-pear-4.3.*:www/php4/core,-pear

NO_BUILD=       Yes
NO_REGRESS=     Yes
NO_CONFIGURE=	Yes

MAKE_FILE=	${PORTSDIR}/www/php4/core/files/Makefile.pear
FAKE_FLAGS+=	WRKINST=${WRKINST} WRKDIR=${WRKDIR}

PREFIX=		/var/www
