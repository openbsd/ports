# New ports collection makefile for:    apc-upsd
# Date created:         28 Dec 1999
# Whom:                 Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:15 espie Exp $
#

DISTNAME=       apc-upsd
PKGNAME=        apc-upsd
CATEGORIES=     sysutils
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=   http://www.knienieder.com/software/

MAINTAINER=     kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=   .tgz

WRKDIST=         ${WRKDIR}/${PKGNAME}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/apc-upsd ${PREFIX}/sbin

post-install:
	@mkdir -p ${PREFIX}/share/doc/apc-upsd
	${INSTALL_DATA} ${WRKSRC}/../doc/smart-protocol ${PREFIX}/share/doc/apc-upsd

	if [ ! -f /etc/apc-upsd.conf ] ; then \
		${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m 644 \
			${WRKSRC}/apc-upsd.conf /etc/apc-upsd.conf; \
	fi

.include <bsd.port.mk>
