# $OpenBSD: Makefile,v 1.15 2012/05/04 09:46:58 lum Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.14.7
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
