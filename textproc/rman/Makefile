# $OpenBSD: Makefile,v 1.15 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"reverse compile man pages from formatted form"

DISTNAME=	rman-3.0.9
CATEGORIES=	textproc
HOMEPAGE=	http://polyglotman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
