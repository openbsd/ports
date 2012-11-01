# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 09:58:06 espie Exp $

COMMENT = base system pseudo package bootstrap
CATEGORIES = base xenocara
NO_BUILD = Yes

DISTNAME = base-boostrap-0
DISTFILES = 

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libdata/base
	${SUBST_CMD} -c -g ${BINGRP} -o ${BINOWN} ${FILESDIR}/component-install ${PREFIX}/libexec/component-install
	chmod a+rx ${PREFIX}/libexec/component-install

.include <bsd.port.mk>
