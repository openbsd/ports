# $OpenBSD: Makefile,v 1.14 2011/12/22 17:16:49 lum Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.14.6
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
