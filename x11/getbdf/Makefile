# OpenBSD makefile for: getbdf
# Date created:         May 18 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 2000/02/12 08:41:14 turan Exp $
#

DISTNAME=       getbdf
PKGNAME=        getbdf-1.0
CATEGORIES=	x11
MASTER_SITES=   ftp://ftp.ipa.fhg.de/pub/X/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.191

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_X11=        yes
WRKDIST=	${WRKDIR}
ALL_TARGET=     getbdf

do-install:
	cd ${WRKSRC}; \
	${INSTALL} -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} getbdf ${PREFIX}/bin

.include <bsd.port.mk>
