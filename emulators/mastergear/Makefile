# $OpenBSD: Makefile,v 1.1.1.1 2001/04/12 10:16:28 aaron Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Sega GameGear and MasterSystem

PKGNAME=	mastergear-1.4
DISTNAME=	MG14-Linux-80x86-bin
NEED_VERSION=	1.364
CATEGORIES=	emulators games
HOMEPAGE=	http://www.komkon.org/fms/MG/

MAINTAINER=	Aaron Campbell <aaron@openbsd.org>

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mastergear
	${INSTALL_DATA_DIR} ${PREFIX}/share/mastergear
	${INSTALL_PROGRAM} ${WRKSRC}/mg ${PREFIX}/bin/mastergear
	${INSTALL_DATA} ${WRKSRC}/MG.html ${PREFIX}/share/doc/mastergear
	${INSTALL_DATA} ${WRKSRC}/CART.ROM ${PREFIX}/share/mastergear

.include <bsd.port.mk>
