# $OpenBSD: Makefile,v 1.13 2013/03/11 11:06:04 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Nintendo Entertainment System

PKGNAME=	ines-1.2
REVISION=	0
DISTNAME=	iNES12-Linux-80x86-bin

CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/iNES/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

RUN_DEPENDS=	emulators/fedora/base

NO_BUILD=	Yes
NO_TEST=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ines
	${INSTALL_DATA_DIR} ${PREFIX}/share/ines
	${INSTALL_PROGRAM} ${WRKSRC}/ines ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/iNES.html ${PREFIX}/share/doc/ines
	${INSTALL_DATA} ${WRKSRC}/CART.NES ${PREFIX}/share/ines

.include <bsd.port.mk>
