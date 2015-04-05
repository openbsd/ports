# $OpenBSD: Makefile,v 1.28 2015/04/05 13:31:14 sthen Exp $

COMMENT=		mouse and keyboard sharing utility

DISTNAME=		synergy-${GH_TAGNAME}
REVISION=		0
CATEGORIES=		net x11

GH_ACCOUNT=		synergy
GH_PROJECT=		synergy
GH_TAGNAME=		1.6.2

HOMEPAGE=		http://synergy-foss.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xi Xinerama Xrandr Xtst \
			c cryptopp curl m pthread stdc++

LIB_DEPENDS=		devel/cryptopp \
			net/curl

MODULES=		devel/cmake

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/synergy[cds] ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	${INSTALL_DATA} ${WRKSRC}/doc/synergy.conf.exampl* \
		${PREFIX}/share/examples/synergy/
	${INSTALL_MAN} ${WRKSRC}/doc/synergyc.man \
		${PREFIX}/man/man1/synergyc.1
	${INSTALL_MAN} ${WRKSRC}/doc/synergys.man \
		${PREFIX}/man/man1/synergys.1

.include <bsd.port.mk>
