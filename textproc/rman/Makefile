# $OpenBSD: Makefile,v 1.17 2003/11/08 04:55:51 kevlo Exp $

COMMENT=	"reverse compile man pages from formatted form"

DISTNAME=	rman-3.2
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
