# OpenBSD makefile for:   xfishtank
# Version required:    2.2
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 2000/03/23 22:14:37 turan Exp $
#

DISTNAME=      xfishtank-2.2
CATEGORIES=    x11
MASTER_SITES=  ftp://ftp.uni-koeln.de/windows/xcontrib/
NEED_VERSION=	1.191

MAINTAINER=    angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=     yes
WRKDIST=        ${WRKDIR}/xfishtank2.0
NO_INSTALL_MANPAGES=yes

post-patch:
	cd  ${WRKSRC}; make clean

.include <bsd.port.mk>
