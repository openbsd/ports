# $OpenBSD: Makefile,v 1.1.1.1 2014/04/01 11:39:21 sthen Exp $

COMMENT=	connect scripts for use with vpnc and openconnect

PKGNAME=	vpnc-scripts-20140401
DISTNAME=	a78b3ddfc56ab457104c88e94dca72d8738f4fad

DISTFILES=	${PKGNAME}{${DISTNAME}}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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
