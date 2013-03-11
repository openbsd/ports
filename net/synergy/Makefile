# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:57 espie Exp $

COMMENT=		mouse and keyboard sharing utility

DISTNAME=		synergy-1.4.10-Source
PKGNAME=		${DISTNAME:S/-Source//}
CATEGORIES=		net x11

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

HOMEPAGE=		http://synergy-foss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrandr Xtst c m pthread stdc++

MASTER_SITES=		http://synergy.googlecode.com/files/

BUILD_DEPENDS=		archivers/gtar

# The synergy devs decided to release a fucked tarball.
# Our tar complains, then errors out.
# tar: Invalid header, starting valid header search.
TAR=			${LOCALBASE}/bin/gtar

MODULES=		devel/cmake

NO_TEST=		Yes

pre-patch:
	@cd ${WRKSRC} ; perl -pi -e 's/\r$$//' CMakeLists.txt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/synergy[cs] ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	${INSTALL_DATA} ${WRKSRC}/doc/synergy.conf.exampl* \
		${PREFIX}/share/examples/synergy/
	${INSTALL_MAN} ${WRKSRC}/doc/synergyc.man \
		${PREFIX}/man/man1/synergyc.1
	${INSTALL_MAN} ${WRKSRC}/doc/synergys.man \
		${PREFIX}/man/man1/synergys.1

.include <bsd.port.mk>
