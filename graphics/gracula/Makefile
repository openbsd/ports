# $OpenBSD: Makefile,v 1.13 2004/02/25 03:30:08 kevlo Exp $

COMMENT=	"graphic counter language compiler/interpreter"

DISTNAME=	gracula-3.0
CATEGORIES=	graphics

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.whizkidtech.redprince.net/gcl/

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
