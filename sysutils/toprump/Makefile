# $OpenBSD: Makefile,v 1.20 2013/07/09 12:23:55 sthen Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.14.8
REVISION=	2
CATEGORIES=	sysutils

HOMEPAGE=	http://cyodesigns.com/toprump/

MAINTAINER=	Mark Lumsden <mark@cyodesigns.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes
WANTLIB=	c curses

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/toprump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/toprump.1 ${PREFIX}/man/man1/toprump.1

.include <bsd.port.mk>
