# $OpenBSD: Makefile,v 1.24 2013/10/15 20:49:57 schwarze Exp $

COMMENT=		anagram search utility

DISTNAME=		agm-1.3.1
REVISION =		2
CATEGORIES=		games

PERMIT_PACKAGE_CDROM=	no license available
PERMIT_PACKAGE_FTP=	no license available
PERMIT_DISTFILES_FTP=	no license available
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/amusements/}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
