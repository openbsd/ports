# OpenBSD makefile for:   xmold
# Version required:    1.0
# Date created:        December 21, 1997
# Whom:                Don Schmidt
#
# $OpenBSD: Makefile,v 1.5 2000/02/22 20:27:35 turan Exp $
#

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=	yes

do-install:
	@mkdir -p ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
