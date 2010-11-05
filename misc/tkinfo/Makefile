# $OpenBSD: Makefile,v 1.22 2010/11/05 08:24:50 sthen Exp $

COMMENT=	Tk script to read GNU info files and display them

DISTNAME=	tkinfo-2.8
REVISION=	0
CATEGORIES=	misc 

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://math-www.uni-paderborn.de/~axel/tkinfo/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes
PKG_ARCH=	*

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkinfo

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
