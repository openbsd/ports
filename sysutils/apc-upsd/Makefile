# New ports collection makefile for:    apc-upsd
# Date created:         28 Dec 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/28 11:22:00 kevlo Exp $
#

DISTNAME=       apc-upsd
PKGNAME=        apc-upsd
CATEGORIES=     sysutils
MASTER_SITES=   http://www.knienieder.com/software/

MAINTAINER=     kevlo@openbsd.org

EXTRACT_SUFX=   .tgz

WRKSRC=         ${WRKDIR}/${PKGNAME}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/apc-upsd ${PREFIX}/sbin

post-install:
	@${MKDIR} ${PREFIX}/share/doc/apc-upsd
	${INSTALL_DATA} ${WRKSRC}/../doc/smart-protocol ${PREFIX}/share/doc/apc-upsd

	if [ ! -f /etc/apc-upsd.conf ] ; then \
		${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m 644 \
			${WRKSRC}/apc-upsd.conf /etc/apc-upsd.conf; \
	fi

.include <bsd.port.mk>
