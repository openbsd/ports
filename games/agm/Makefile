# $OpenBSD: Makefile,v 1.20 2007/12/10 07:00:41 ajacoutot Exp $

COMMENT=		anagram search utility

DISTNAME=		agm-1.3.1
PKGNAME=		${DISTNAME}p1
CATEGORIES=		games

PERMIT_PACKAGE_CDROM=	no license available
PERMIT_PACKAGE_FTP=	no license available
PERMIT_DISTFILES_CDROM=	no license available
PERMIT_DISTFILES_FTP=	no license available
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/amusements/}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
