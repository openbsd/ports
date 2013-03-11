# $OpenBSD: Makefile,v 1.14 2013/03/11 11:06:04 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Nintendo Gameboy

PKGNAME=	vgb-2.1
REVISION=	0
DISTNAME=	VGB21-Linux-80x86-bin

CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/VGB/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

RUN_DEPENDS=	emulators/fedora/base

NO_BUILD=	Yes
NO_TEST=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vgb
	${INSTALL_DATA_DIR} ${PREFIX}/share/vgb
	${INSTALL_PROGRAM} ${WRKSRC}/vgb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/VGB.html ${PREFIX}/share/doc/vgb
	${INSTALL_DATA} ${WRKSRC}/CART.GB ${PREFIX}/share/vgb

.include <bsd.port.mk>
