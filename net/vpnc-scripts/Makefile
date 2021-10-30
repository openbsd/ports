# $OpenBSD: Makefile,v 1.6 2021/10/30 19:20:49 afresh1 Exp $

COMMENT=	connect scripts for use with vpnc and openconnect

C=		e6a8fac7f7e8bf3c391787a3e0672f741603a9c9
DISTNAME=	vpnc-scripts-${C}
PKGNAME=	vpnc-scripts-20200317
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://gitlab.com/openconnect/vpnc-scripts/

MAINTAINER=	Andrew Hewus Fresh <afresh1@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://gitlab.com/openconnect/vpnc-scripts/-/archive/${C}/

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vpnc-scripts/
	cd ${WRKSRC}; ${INSTALL_SCRIPT} COPYING vpnc-script{,-ptrtd,-sshd} \
	    ${PREFIX}/share/vpnc-scripts/

.include <bsd.port.mk>
