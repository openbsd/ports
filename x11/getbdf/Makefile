# OpenBSD makefile for: getbdf
# Date created:         May 18 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/03/24 22:12:04 espie Exp $
#

DISTNAME=       getbdf
PKGNAME=        getbdf-1.0
CATEGORIES=	x11
NEED_VERSION=	1.191
MASTER_SITES=   ftp://ftp.ipa.fhg.de/pub/X/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_X11=        yes
WRKDIST=	${WRKDIR}
ALL_TARGET=     getbdf

do-install:
	cd ${WRKSRC}; \
	${INSTALL} -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} getbdf ${PREFIX}/bin

.include <bsd.port.mk>
