# $OpenBSD: Makefile,v 1.13 2011/04/18 18:37:48 jasper Exp $

COMMENT=		mouse and keyboard sharing utility

DISTNAME=		synergy-1.4.2-Source
PKGNAME=		${DISTNAME:S/-Source//}
CATEGORIES=		net x11

HOMEPAGE=		http://synergy-foss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xinerama Xtst c m pthread stdc++

MASTER_SITES=		http://synergy.googlecode.com/files/

MODULES=		devel/cmake

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/synergy[cs] ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	${INSTALL_DATA} ${WRKBUILD}/doc/synergy.conf.exampl* \
		${PREFIX}/share/examples/synergy/
	${INSTALL_MAN} ${WRKBUILD}/doc/synergyc.man \
		${PREFIX}/man/man1/synergyc.1
	${INSTALL_MAN} ${WRKBUILD}/doc/synergys.man \
		${PREFIX}/man/man1/synergys.1

.include <bsd.port.mk>
