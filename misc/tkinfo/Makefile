# $OpenBSD: Makefile,v 1.15 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"Tk script to read GNU info files and display them"

DISTNAME=	tkinfo-2.5
CATEGORIES=	misc 

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://math-www.uni-paderborn.de/~axel/tkinfo/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tk-8.3.*:x11/tk/8.3

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
