# $OpenBSD: Makefile,v 1.24 2014/05/01 14:46:53 bcallah Exp $

COMMENT=		mouse and keyboard sharing utility

V=			1.4.17
DISTNAME=		synergy-${V}-r2055-Source
PKGNAME=		synergy-${V}
CATEGORIES=		net x11

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>
HOMEPAGE=		http://synergy-foss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xi Xinerama Xrandr Xtst \
			c cryptopp curl m pthread stdc++

MASTER_SITES=		http://fossfiles.com/synergy/

BUILD_DEPENDS=		archivers/gtar

LIB_DEPENDS=		devel/cryptopp \
			net/curl

# tar: Invalid header, starting valid header search.
TAR=			${LOCALBASE}/bin/gtar

MODULES=		devel/cmake

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/synergy-${V}-Source

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
