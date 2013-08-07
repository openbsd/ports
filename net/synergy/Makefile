# $OpenBSD: Makefile,v 1.21 2013/08/07 21:32:27 naddy Exp $

COMMENT=		mouse and keyboard sharing utility

V=			1.4.12
DISTNAME=		synergy-${V}-Source
PKGNAME=		synergy-${V}
REVISION=		1
CATEGORIES=		net x11

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

HOMEPAGE=		http://synergy-foss.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xi Xinerama Xrandr Xtst \
			c cryptopp m pthread stdc++

MASTER_SITES=		https://synergy.googlecode.com/files/

BUILD_DEPENDS=		archivers/gtar

LIB_DEPENDS=		devel/cryptopp

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
