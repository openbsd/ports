# New ports collection makefile for:	gracula
# Version required:			3.0
# Date created:				28 Oct 1999
# Whom:					Kevin Lo <kevlo@openbsd.org>
#
# $OpenBSD: Makefile,v 1.3 2000/04/09 17:36:40 espie Exp $
#

DISTNAME=	gracula-3.0
CATEGORIES=	graphics
FAKE=No
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
