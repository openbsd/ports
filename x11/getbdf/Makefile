# OpenBSD makefile for: getbdf
# Date created:         May 18 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:37 espie Exp $
#

DISTNAME=       getbdf
PKGNAME=        getbdf-1.0
CATEGORIES=	x11
MASTER_SITES=   ftp://ftp.ipa.fhg.de/pub/X/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.191

MAINTAINER=     angelos@openbsd.org

USE_X11=        yes
WRKDIST=	${WRKDIR}
ALL_TARGET=     getbdf

do-install:
	cd ${WRKSRC}; \
	${INSTALL} -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} getbdf ${PREFIX}/bin

.include <bsd.port.mk>
