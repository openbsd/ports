# OpenBSD makefile for:   xfishtank
# Version required:    2.2
# Date created:        May 19 1998
# Whom:                Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.10 2001/05/06 04:41:35 lebel Exp $
#

COMMENT=	"fish swim in the background of your screen"

DISTNAME=      xfishtank-2.2
CATEGORIES=    x11
NEED_VERSION=	1.402
MASTER_SITES=  ftp://ftp.uni-koeln.de/windows/xcontrib/

MAINTAINER=    ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake noman
WRKDIST=        ${WRKDIR}/xfishtank2.0

post-patch:
	cd  ${WRKSRC}; make clean

.include <bsd.port.mk>
