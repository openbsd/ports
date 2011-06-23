# $OpenBSD: Makefile,v 1.12 2011/06/23 22:50:29 naddy Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.14.4
CATEGORIES=	sysutils

HOMEPAGE=	http://cyodesigns.com/toprump/

MAINTAINER=	Mark Lumsden <mark@cyodesigns.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes
WANTLIB=	c curses 

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/toprump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/toprump.1 ${PREFIX}/man/man1/toprump.1

.include <bsd.port.mk>
