# $OpenBSD: Makefile,v 1.16 2003/06/23 02:29:34 kevlo Exp $

COMMENT=	"reverse compile man pages from formatted form"

DISTNAME=	rman-3.1
CATEGORIES=	textproc
HOMEPAGE=	http://polyglotman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=polyglotman/}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
