# $OpenBSD: Makefile,v 1.23 2015/02/16 22:57:13 naddy Exp $

COMMENT=	reverse compile man pages from formatted form

DISTNAME=	rman-3.2
CATEGORIES=	textproc
HOMEPAGE=	http://polyglotman.sourceforge.net/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=polyglotman/}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
