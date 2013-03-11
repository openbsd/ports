# $OpenBSD: Makefile,v 1.13 2013/03/11 11:06:04 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Sega GameGear and MasterSystem

PKGNAME=	mastergear-1.4
REVISION=	0
DISTNAME=	MG14-Linux-80x86-bin

CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/MG/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

RUN_DEPENDS=	emulators/fedora/base

NO_BUILD=	Yes
NO_TEST=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mastergear
	${INSTALL_DATA_DIR} ${PREFIX}/share/mastergear
	${INSTALL_PROGRAM} ${WRKSRC}/mg ${PREFIX}/bin/mastergear
	${INSTALL_DATA} ${WRKSRC}/MG.html ${PREFIX}/share/doc/mastergear
	${INSTALL_DATA} ${WRKSRC}/CART.ROM ${PREFIX}/share/mastergear

.include <bsd.port.mk>
