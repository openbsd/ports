# $OpenBSD: Makefile,v 1.1.1.1 2001/04/12 08:55:50 aaron Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Nintendo Gameboy

PKGNAME=	vgb-2.1
DISTNAME=	VGB21-Linux-80x86-bin
CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/VGB/

MAINTAINER=	aaron@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

RUN_DEPENDS=	/emul/linux/lib/libc.so.6::emulators/redhat_base

USE_X11=	Yes
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vgb
	${INSTALL_DATA_DIR} ${PREFIX}/share/vgb
	${INSTALL_PROGRAM} ${WRKSRC}/vgb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/VGB.html ${PREFIX}/share/doc/vgb
	${INSTALL_DATA} ${WRKSRC}/CART.GB ${PREFIX}/share/vgb

.include <bsd.port.mk>
