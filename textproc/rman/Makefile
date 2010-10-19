# $OpenBSD: Makefile,v 1.21 2010/10/19 07:54:25 espie Exp $

COMMENT=	reverse compile man pages from formatted form

DISTNAME=	rman-3.2
CATEGORIES=	textproc
HOMEPAGE=	http://polyglotman.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=polyglotman/}

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
