# $OpenBSD: Makefile,v 1.8 2000/10/24 12:20:45 kevlo Exp $

DISTNAME=	gracula-3.0
CATEGORIES=	graphics
NEED_VERSION=	1.340
MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.whizkidtech.net/cgi/gcl/ 

HOMEPAGE=	http://www.whizkidtech.net/gcl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gracula ${PREFIX}/bin
	$(INSTALL_PROGRAM) ${WRKSRC}/sec2000 ${PREFIX}/bin

.include <bsd.port.mk>
