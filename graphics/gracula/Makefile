# New ports collection makefile for:	gracula
# Version required:			3.0
# Date created:				28 Oct 1999
# Whom:					Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.2 2000/03/17 01:09:59 turan Exp $
#

DISTNAME=	gracula-3.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.whizkidtech.net/cgi/gcl/ \
		http://www.whizkidtech.net/gcl/

MAINTAINER=	kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gracula ${PREFIX}/bin
	$(INSTALL_PROGRAM) ${WRKSRC}/sec2000 ${PREFIX}/bin

.include <bsd.port.mk>
