# $OpenBSD: Makefile,v 1.12 2002/10/27 00:03:16 naddy Exp $

COMMENT=	"graphic counter language compiler/interpreter"

DISTNAME=	gracula-3.0
CATEGORIES=	graphics

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.whizkidtech.net/cgi/gcl/ 

HOMEPAGE=	http://www.whizkidtech.net/gcl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gracula ${PREFIX}/bin
	$(INSTALL_PROGRAM) ${WRKSRC}/sec2000 ${PREFIX}/bin

.include <bsd.port.mk>
