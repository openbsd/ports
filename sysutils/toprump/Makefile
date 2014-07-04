# $OpenBSD: Makefile,v 1.21 2014/07/04 12:20:32 sthen Exp $

COMMENT=	modified OpenBSD top command

DISTNAME=	toprump-0.14.8
REVISION=	3
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
