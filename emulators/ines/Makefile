# $OpenBSD: Makefile,v 1.8 2006/10/19 00:15:36 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"emulates the Nintendo Entertainment System"

PKGNAME=	ines-1.2p0
DISTNAME=	iNES12-Linux-80x86-bin

CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/iNES/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

RUN_DEPENDS=	::emulators/fedora/base

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ines
	${INSTALL_DATA_DIR} ${PREFIX}/share/ines
	${INSTALL_PROGRAM} ${WRKSRC}/ines ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/iNES.html ${PREFIX}/share/doc/ines
	${INSTALL_DATA} ${WRKSRC}/CART.NES ${PREFIX}/share/ines

.include <bsd.port.mk>
