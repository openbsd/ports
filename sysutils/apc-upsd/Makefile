# New ports collection makefile for:    apc-upsd
# Date created:         28 Dec 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:38 espie Exp $
#

DISTNAME=       apc-upsd
PKGNAME=        apc-upsd
CATEGORIES=     sysutils
MASTER_SITES=   http://www.knienieder.com/software/
NEED_VERSION=	1.191

MAINTAINER=     kevlo@openbsd.org

EXTRACT_SUFX=   .tgz

WRKDIST=         ${WRKDIR}/${PKGNAME}/src

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
