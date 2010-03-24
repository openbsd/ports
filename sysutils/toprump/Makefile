# $OpenBSD: Makefile,v 1.4 2010/03/24 10:34:04 lum Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.13.2
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
	${INSTALL_MAN} ${WRKSRC}/toprump.cat1 ${PREFIX}/man/cat1/toprump.0

.include <bsd.port.mk>
