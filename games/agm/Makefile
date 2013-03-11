# $OpenBSD: Makefile,v 1.23 2013/03/11 11:07:37 espie Exp $

COMMENT=		anagram search utility

DISTNAME=		agm-1.3.1
REVISION =		1
CATEGORIES=		games

PERMIT_PACKAGE_CDROM=	no license available
PERMIT_PACKAGE_FTP=	no license available
PERMIT_DISTFILES_FTP=	no license available
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/amusements/}

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
