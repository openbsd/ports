# $OpenBSD: Makefile,v 1.2 2009/11/23 08:25:06 benoit Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.4.01
DISTNAME=	vmpsd-${V}
PKGNAME=	openvmps-${V}
CATEGORIES=	net

HOMEPAGE=	http://vmps.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmps/}

WANTLIB=	c

WRKDIST=	${WRKDIR}/vmpsd

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openvmps
	${INSTALL_DATA} ${WRKSRC}/vlan.db ${PREFIX}/share/examples/openvmps

.include <bsd.port.mk>
