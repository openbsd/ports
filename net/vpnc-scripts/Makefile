# $OpenBSD: Makefile,v 1.4 2020/02/03 20:40:40 sthen Exp $

COMMENT=	connect scripts for use with vpnc and openconnect

PKGNAME=	vpnc-scripts-20140401
DISTNAME=	a78b3ddfc56ab457104c88e94dca72d8738f4fad
REVISION=	1

DISTFILES=	${PKGNAME}{${DISTNAME}}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://git.infradead.org/users/dwmw2/vpnc-scripts.git/snapshot/
WRKDIST=	${WRKDIR}/vpnc-scripts-${DISTNAME:C/([0-9a-f]{7}).*/\1/}

PKG_ARCH=	*

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vpnc-scripts/
	cd ${WRKSRC}; ${INSTALL_SCRIPT} COPYING vpnc-script{,-ptrtd,-sshd} \
	    ${PREFIX}/share/vpnc-scripts/

.include <bsd.port.mk>
