# $OpenBSD: Makefile,v 1.11 2002/03/21 20:57:08 espie Exp $

COMMENT=	"graphic counter language compiler/interpreter"

DISTNAME=	gracula-3.0
CATEGORIES=	graphics
NEED_VERSION=	1.515
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
