# OpenBSD makefile for:   xfishtank
# Version required:    2.2
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 2000/02/11 00:37:40 espie Exp $
#

DISTNAME=      xfishtank-2.2
CATEGORIES=    x11
MASTER_SITES=  ftp://ftp.uni-koeln.de/windows/xcontrib/
NEED_VERSION=	1.191

MAINTAINER=    angelos@openbsd.org

USE_IMAKE=     yes
WRKDIST=        ${WRKDIR}/xfishtank2.0
NO_INSTALL_MANPAGES=yes

post-patch:
	cd  ${WRKSRC}; make clean

.include <bsd.port.mk>
