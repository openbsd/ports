# OpenBSD makefile for:   xfishtank
# Version required:    2.2
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:38:49 espie Exp $
#

DISTNAME=      xfishtank-2.2
CATEGORIES=    x11
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=  ftp://ftp.uni-koeln.de/windows/xcontrib/

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
