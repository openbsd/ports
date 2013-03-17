# $OpenBSD: Makefile,v 1.3 2013/03/17 13:33:30 espie Exp $

COMMENT = base system pseudo package bootstrap
CATEGORIES = base xenocara
NO_BUILD = Yes

DISTNAME = base-bootstrap-0
DISTFILES = 

PERMIT_PACKAGE_CDROM=   Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/base
	${SUBST_CMD} -c -g ${BINGRP} -o ${BINOWN} ${FILESDIR}/component-install ${PREFIX}/libexec/component-install
	chmod a+rx ${PREFIX}/libexec/component-install

.include <bsd.port.mk>
